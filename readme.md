# Prithvitech ESG Consulting Website

A professional, accessible, and mobile-friendly website for ESG and sustainability consulting, built with HTML, CSS, and minimal JavaScript.

## Features

- ✅ **Fully Responsive Design** - Mobile-first approach that works seamlessly on all devices
- ✅ **Accessibility Compliant** - WCAG 2.1 AA standards with ARIA labels, semantic HTML, and keyboard navigation
- ✅ **SEO Optimized** - Meta tags, structured data, and semantic markup for better search engine visibility
- ✅ **Professional Design** - Clean, minimal aesthetic with modern UI/UX principles
- ✅ **Google Workspace Compatible** - Simple HTML/CSS structure that works with Google Sites
- ✅ **Fast Loading** - Minimal dependencies, optimized CSS, and efficient JavaScript
- ✅ **Cross-Browser Compatible** - Works on all modern browsers

## Structure

```
prithvitech-website/
├── index.html      # Main HTML file with semantic structure
├── styles.css      # Responsive CSS with mobile-first design
├── script.js       # Minimal JavaScript for enhanced UX
└── readme.md       # Documentation
```

## Sections

1. **Header/Navigation** - Sticky navigation with mobile hamburger menu
2. **Hero Section** - Science-driven ESG & sustainability introduction
3. **About Section** - Company overview, founder credentials, and core values
4. **Services Section** - Six ESG consulting services
5. **Contact Section** - Contact form and information
6. **Footer** - Quick links and company information

## Services Offered

1. **ESG Strategy, Advisory & Reporting**
2. **Climate Change, Carbon & Net-Zero Advisory**
3. **Circular Economy, Green Waste & Resource Management**
4. **Environmental Impact, LCA & Sustainability Modelling**
5. **Regulatory, Compliance & Environmental Governance**
6. **Sustainable Materials, Innovation & Green Manufacturing**

## Technologies Used

- **HTML5** - Semantic markup for better accessibility and SEO
- **CSS3** - Modern styling with CSS Grid, Flexbox, and custom properties
- **JavaScript (ES6+)** - Minimal, vanilla JavaScript for interactions

## Key Features Implemented

### Accessibility
- Skip to main content link for keyboard users
- ARIA labels and roles throughout
- Proper heading hierarchy
- Keyboard navigation support
- High contrast mode support
- Reduced motion support for users with vestibular disorders
- Focus indicators for all interactive elements

### Responsive Design
- Mobile-first CSS approach
- Fluid typography using `clamp()`
- Flexible grid layouts
- Responsive navigation with hamburger menu
- Optimized spacing for all screen sizes

### SEO Features
- Semantic HTML5 elements
- Meta tags for description, keywords, and social media
- Open Graph tags for social sharing
- Canonical URL
- Structured heading hierarchy
- Descriptive alt text ready for images

### User Experience
- Smooth scrolling navigation
- Form validation with helpful error messages
- Success feedback for form submission
- Active navigation highlighting on scroll
- Hover and focus states for all interactive elements

## Browser Support

- Chrome/Edge (latest)
- Firefox (latest)
- Safari (latest)
- Mobile browsers (iOS Safari, Chrome Mobile)

## Google Workspace / Google Sites Compatibility

The website uses standard HTML, CSS, and JavaScript without any build process or external dependencies, making it fully compatible with Google Sites. To use with Google Sites:

1. Copy the HTML content from `index.html`
2. Embed the CSS from `styles.css` in a `<style>` tag or as a separate file
3. Add the JavaScript from `script.js` before the closing `</body>` tag

## Customization

### Logo
Replace the placeholder logo in `images/logo.svg`:
1. **Recommended formats**: SVG (best), PNG, or JPG
2. **Recommended size**: 400x120px or similar ratio for raster images
3. **Upload your logo**: Replace `images/logo.svg` with your file
4. **Multiple formats supported**: The site will work with `logo.svg`, `logo.png`, or `logo.jpg`
5. **See detailed instructions**: Check `images/README.md` for upload methods

The logo will automatically display in the navigation header across all pages with responsive sizing.

### Colors
Edit the CSS custom properties in `styles.css`:
```css
:root {
    --primary-color: #2C3E50;
    --secondary-color: #3498DB;
    --accent-color: #E74C3C;
    /* ... */
}
```

### Content
Update text directly in `index.html` for:
- Company name and tagline
- Service descriptions
- Contact information
- About section content

### Sections
Add or remove sections by editing `index.html` and updating navigation links accordingly.

## Performance

- No external dependencies or frameworks
- Minimal CSS and JavaScript
- Optimized for fast loading
- Ready for lazy loading of images
- Print-friendly styles included

## Future Enhancements (Optional)

- Add actual images with lazy loading
- Integrate with a backend for form submission
- Add more interactive features
- Implement analytics tracking
- Add a blog section
- Include testimonials or case studies

## License

© 2024 Prithvitech ESG Consulting. All rights reserved.

## Contact

- **Email:** info@prithvitech.com
- **Phone:** +1 (234) 567-890
- **Address:** 123 Business Street, Suite 100, City, State 12345
