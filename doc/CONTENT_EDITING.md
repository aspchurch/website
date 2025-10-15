# Content Editing Guide 📝

**For All Saints Presbyterian Church Website**

This guide helps non-technical users safely update website content without breaking the site.

---

## 🎯 **What You Can Safely Edit**

### ✅ **SAFE TO EDIT** - These won't break the site:

**Content Files (`.md` files):**
- Page titles and subtitles
- Body text and paragraphs
- Contact information
- Service times and dates
- Pastor bio information
- Belief statements content

**Example Safe Edits:**
```markdown
---
title: "About Us"                    ← ✅ Safe to change
subtitle: "Welcome to our church"    ← ✅ Safe to change
---

This is the main content...          ← ✅ Safe to change
```

### ❌ **DO NOT EDIT** - These can break the site:

- Anything between `---` lines at the top (front matter)
- Lines starting with `{%` or `{{` (Jekyll code)
- Lines starting with `<` (HTML tags)
- File names or folder structure
- CSS or styling code

---

## 📁 **File Guide - What Each File Does**

### **Main Content Pages:**
| File | Purpose | Safe to Edit? |
|------|---------|---------------|
| `about.md` | About Us page | ✅ Content only |
| `leadership.md` | Pastor & staff info | ✅ Content only |
| `what-we-believe.md` | Church beliefs | ✅ Content only |
| `vision-and-values.md` | Vision & mission | ✅ Content only |
| `meeting-time.md` | Service times & location | ✅ Content only |
| `give.md` | Giving information | ✅ Content only |

### **Technical Files:**
| File/Folder | Purpose | Safe to Edit? |
|-------------|---------|---------------|
| `_config.yml` | Site settings | ❌ Developer only |
| `_layouts/` | Page templates | ❌ Developer only |
| `_includes/` | Reusable components | ❌ Developer only |
| `assets/` | Styling & images | ❌ Developer only |

---

## ✏️ **How to Make Edits**

### **Option 1: Edit on GitHub (Recommended)**
1. Go to your repository on GitHub.com
2. Navigate to the file you want to edit
3. Click the pencil icon (✏️) "Edit this file"
4. Make your changes to the content
5. Scroll down and add a commit message like "Update service times"
6. Click "Commit changes"
7. Site updates automatically in 2-3 minutes

### **Option 2: Edit Locally (Advanced)**
1. Clone repository to your computer
2. Edit files in text editor
3. Commit and push changes
4. Site updates automatically

---

## 📋 **Common Content Updates**

### **Updating Service Times:**
**File:** `meeting-time.md`
```markdown
## 5:00 PM                    ← Change time here

At Redeemer By The Sea Lutheran Church

**6600 Black Rail Rd, Carlsbad CA 92011**    ← Change address here
```

### **Updating Pastor Information:**
**File:** `leadership.md`
- Update bio paragraph
- Change email address
- Update family information

### **Updating Beliefs:**
**File:** `what-we-believe.md`
- Edit the content within each `<section>` block
- Keep the structure intact, only change the text

### **Updating Contact Info:**
**File:** `_layouts/default.html`
**⚠️ CAUTION:** This requires developer help
- Footer contact information
- Social media links

---

## 📝 **Markdown Formatting Guide**

You can use these simple formatting options:

```markdown
**Bold text**
*Italic text*
[Link text](http://example.com)

# Large Heading
## Medium Heading
### Small Heading

- Bullet point
- Another bullet point

1. Numbered list
2. Second item
```

---

## 🚨 **If Something Breaks**

### **Signs of Problems:**
- Site won't load
- Missing styling/formatting
- Error messages
- Content not displaying

### **What to Do:**
1. **Don't Panic!** - Most issues are easily fixable
2. **Check your last change** - Compare with what was working
3. **Undo recent changes** - Revert to previous version
4. **Contact developer** - If unsure, ask for help

### **Emergency Rollback:**
On GitHub.com:
1. Go to the file you edited
2. Click "History"
3. Click on the previous working version
4. Click "Revert this in a new commit"

---

## 💡 **Best Practices**

### **Before Making Changes:**
- ✅ Make small changes one at a time
- ✅ Test changes on a single page first
- ✅ Keep backup of original content
- ✅ Use descriptive commit messages

### **Writing Content:**
- ✅ Keep sentences clear and concise
- ✅ Use consistent formatting
- ✅ Check spelling and grammar
- ✅ Preview changes before saving

### **Getting Help:**
- 📧 **Technical Issues:** Contact your developer
- 📖 **Content Questions:** Refer to this guide
- 🔄 **Training:** Ask for a walkthrough session

---

## 📞 **Support Contact**

**For technical support or questions about editing:**
- Create an issue on GitHub
- Contact your website developer
- Reference this guide for common tasks

**Remember:** When in doubt, ask! It's better to get help than to accidentally break something.

---

*Last updated: October 2025*