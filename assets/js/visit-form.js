(function () {
  var form = document.getElementById('visit-form');
  if (!form) return;

  // No fetch/FormData support: skip AJAX entirely and let the native form
  // submission + hidden "redirect" field handle it.
  if (!window.fetch || !window.FormData) return;

  var status = document.getElementById('visit-form-status');

  form.addEventListener('submit', function (event) {
    event.preventDefault();

    var submitButton = form.querySelector('button[type="submit"]');
    submitButton.disabled = true;
    status.textContent = 'Sending...';
    status.className = 'visit-form-status';

    fetch(form.action, {
      method: 'POST',
      headers: { Accept: 'application/json' },
      body: new FormData(form)
    })
      .then(function (response) { return response.json(); })
      .then(function (result) {
        if (result.success) {
          form.reset();
          form.hidden = true;
          status.textContent = "Thanks! We've got your info and will be looking for you Sunday.";
          status.className = 'visit-form-status visit-form-status--success';
        } else {
          throw new Error(result.message || 'Submission failed');
        }
      })
      .catch(function () {
        var fallbackEmail = form.getAttribute('data-fallback-email');
        status.textContent = 'Something went wrong sending that. Please try again' +
          (fallbackEmail ? ', or email ' + fallbackEmail + ' directly.' : '.');
        status.className = 'visit-form-status visit-form-status--error';
        submitButton.disabled = false;
      });
  });
})();
