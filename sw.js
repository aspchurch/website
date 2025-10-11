// Service Worker for All Saints Presbyterian Church
// Provides offline functionality and caching for better performance

const CACHE_NAME = 'aspchurch-v1.2';
const STATIC_CACHE_NAME = 'aspchurch-static-v1.2';
const DYNAMIC_CACHE_NAME = 'aspchurch-dynamic-v1.2';

// Assets to cache immediately
const STATIC_ASSETS = [
    '/my.website/',
    '/my.website/index.html',
    '/my.website/assets/css/style.css',
    '/my.website/assets/images/cross1.png',
    '/my.website/leadership/',
    '/my.website/what-we-believe/',
    '/my.website/vision-and-values/',
    '/my.website/meeting-time/',
    '/my.website/give/',
    'https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Playfair+Display:wght@400;600;700&display=swap'
];

// Install event - cache static assets
self.addEventListener('install', (event) => {
    console.log('Service Worker: Installing...');
    event.waitUntil(
        caches.open(STATIC_CACHE_NAME)
            .then((cache) => {
                console.log('Service Worker: Caching static assets');
                return cache.addAll(STATIC_ASSETS);
            })
            .catch((error) => {
                console.error('Service Worker: Failed to cache static assets', error);
            })
    );
    self.skipWaiting();
});

// Activate event - clean up old caches
self.addEventListener('activate', (event) => {
    console.log('Service Worker: Activating...');
    event.waitUntil(
        caches.keys().then((cacheNames) => {
            return Promise.all(
                cacheNames.map((cacheName) => {
                    if (cacheName !== STATIC_CACHE_NAME && cacheName !== DYNAMIC_CACHE_NAME) {
                        console.log('Service Worker: Deleting old cache', cacheName);
                        return caches.delete(cacheName);
                    }
                })
            );
        })
    );
    self.clients.claim();
});

// Fetch event - serve from cache, fallback to network
self.addEventListener('fetch', (event) => {
    // Only handle GET requests
    if (event.request.method !== 'GET') {
        return;
    }

    // Skip cross-origin requests
    if (!event.request.url.startsWith(self.location.origin) &&
        !event.request.url.startsWith('https://fonts.googleapis.com') &&
        !event.request.url.startsWith('https://fonts.gstatic.com')) {
        return;
    }

    event.respondWith(
        caches.match(event.request)
            .then((cachedResponse) => {
                // Return cached version if available
                if (cachedResponse) {
                    // Update cache in background for HTML pages
                    if (event.request.headers.get('accept').includes('text/html')) {
                        event.waitUntil(updateCache(event.request));
                    }
                    return cachedResponse;
                }

                // Fetch from network and cache
                return fetch(event.request)
                    .then((networkResponse) => {
                        // Only cache successful responses
                        if (networkResponse.status === 200) {
                            const responseClone = networkResponse.clone();

                            // Determine cache strategy based on request type
                            let cacheName = DYNAMIC_CACHE_NAME;
                            if (STATIC_ASSETS.includes(event.request.url) ||
                                event.request.url.includes('fonts.g')) {
                                cacheName = STATIC_CACHE_NAME;
                            }

                            caches.open(cacheName)
                                .then((cache) => {
                                    cache.put(event.request, responseClone);
                                });
                        }

                        return networkResponse;
                    })
                    .catch(() => {
                        // Offline fallback for HTML pages
                        if (event.request.headers.get('accept').includes('text/html')) {
                            return caches.match('/my.website/');
                        }

                        // Return offline message for other resources
                        return new Response('Offline - content not available', {
                            status: 503,
                            statusText: 'Service Unavailable'
                        });
                    });
            })
    );
});

// Background cache update function
async function updateCache(request) {
    try {
        const networkResponse = await fetch(request);
        if (networkResponse.status === 200) {
            const cache = await caches.open(DYNAMIC_CACHE_NAME);
            cache.put(request, networkResponse);
        }
    } catch (error) {
        console.log('Background cache update failed:', error);
    }
}

// Message handler for cache updates
self.addEventListener('message', (event) => {
    if (event.data && event.data.type === 'SKIP_WAITING') {
        self.skipWaiting();
    }

    if (event.data && event.data.type === 'CACHE_UPDATE') {
        event.waitUntil(
            caches.open(DYNAMIC_CACHE_NAME)
                .then((cache) => {
                    return cache.addAll(event.data.urls);
                })
        );
    }
});