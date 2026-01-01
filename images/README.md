# Images Directory

This directory contains image assets for the Prithvitech website.

## Logo Files

### How to Replace the Placeholder Logo

The current `logo.svg` is a placeholder. To use your own logo:

1. **Prepare your logo file:**
   - Supported formats: PNG, SVG, JPG, or WEBP
   - Recommended: SVG format for best quality at all sizes
   - If using PNG/JPG: Recommended size is 400x120 pixels (or similar ratio)
   - Ensure the file has a transparent background (for PNG/SVG)

2. **Replace the logo:**
   - Option A: Replace the existing file
     - Delete or rename the current `logo.svg`
     - Upload your logo file with the name `logo.svg` (or `logo.png`, `logo.jpg`)
   
   - Option B: Add your logo alongside
     - Upload your logo file to this directory
     - Update the file references in all HTML files (see below)

3. **Update HTML files** (if you change the filename or format):
   - Open each HTML file: `index.html`, `about.html`, `services.html`, `team.html`, `contact.html`
   - Find the logo image tag: `<img src="images/logo.svg" ...>`
   - Update the `src` attribute to match your filename, e.g., `src="images/your-logo.png"`

4. **Update CSS** (optional):
   - Open `styles.css`
   - Search for `.logo` class
   - Adjust `max-height`, `max-width` if needed to fit your logo dimensions

## Adding Other Images

You can add other images to this directory:
- Hero background images
- Team photos
- Service icons
- Client logos

Name them descriptively (e.g., `hero-background.jpg`, `founder-photo.jpg`) and reference them in your HTML files.

## File Upload Methods

### Method 1: GitHub Web Interface
1. Go to the repository on GitHub
2. Navigate to the `images` folder
3. Click "Add file" → "Upload files"
4. Drag and drop your logo file
5. Commit the changes

### Method 2: Git Command Line
```bash
# Copy your logo to the images directory
cp /path/to/your/logo.png images/logo.png

# Add and commit
git add images/logo.png
git commit -m "Add company logo"
git push
```

### Method 3: Through the Agent
If you're working with the AI agent:
1. Upload your logo to a publicly accessible URL (Google Drive, Dropbox, etc.)
2. Share the link with the agent
3. The agent can download and add it to the repository

## Best Practices

- **File Size:** Keep logos under 200KB for fast loading
- **Format:** 
  - SVG: Best for logos, scalable, small file size
  - PNG: Good for logos with transparency
  - JPG: For photos, not recommended for logos
  - WEBP: Modern format, great compression
- **Naming:** Use lowercase, hyphens instead of spaces (e.g., `company-logo.svg`)
- **Optimization:** Compress images before uploading using tools like TinyPNG or SVGO
