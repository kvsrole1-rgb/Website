# Deployment Guide for ArkaVed Technologies Inc Website

This guide will help you deploy the Jekyll website to GitHub Pages and set up local development.

## Prerequisites

Before you begin, ensure you have the following installed:

- **Ruby** (version 3.1 or higher)
- **Bundler** gem
- **Jekyll** (version 4.3 or higher)
- **Git**

## Local Development Setup

### 1. Install Ruby and Jekyll

#### Windows:
```bash
# Install Ruby using RubyInstaller
# Download from: https://rubyinstaller.org/

# Install Jekyll and Bundler
gem install jekyll bundler
```

#### macOS:
```bash
# Install Ruby using Homebrew
brew install ruby

# Install Jekyll and Bundler
gem install jekyll bundler
```

#### Linux (Ubuntu/Debian):
```bash
# Install Ruby
sudo apt update
sudo apt install ruby ruby-dev build-essential

# Install Jekyll and Bundler
gem install jekyll bundler
```

### 2. Clone and Setup the Repository

```bash
# Clone the repository
git clone https://github.com/kvsrole1-rgb/Website.git
cd Website

# Install dependencies
bundle install
```

### 3. Test Locally

```bash
# Build the site
bundle exec jekyll build

# Serve locally
bundle exec jekyll serve
```

Open your browser and navigate to `http://localhost:4000` to view the site.

## GitHub Pages Deployment

### 1. Repository Setup

1. Go to your GitHub repository: `https://github.com/kvsrole1-rgb/Website`
2. Navigate to **Settings** → **Pages**
3. Under **Source**, select **GitHub Actions**

### 2. Automatic Deployment

The repository is already configured with GitHub Actions for automatic deployment. When you push to the main branch, the site will automatically build and deploy.

The workflow file is located at `.github/workflows/jekyll.yml`.

### 3. Manual Deployment (Alternative)

If you prefer manual deployment:

1. Build the site locally:
   ```bash
   bundle exec jekyll build
   ```

2. The built site will be in the `_site` directory
3. Deploy the contents of `_site` to your hosting provider

## Configuration

### Site Configuration

Edit `_config.yml` to customize:

- Site title and description
- Base URL for GitHub Pages
- Navigation menu
- Social links
- Jekyll settings

### GitHub Pages URL

The site will be available at:
`https://kvsrole1-rgb.github.io/Website`

Update the `url` field in `_config.yml` if needed.

## Content Management

### Adding New Pages

1. Create a new `.md` or `.html` file in the root directory
2. Add front matter with layout and title:
   ```yaml
   ---
   layout: default
   title: "Page Title"
   description: "Page description"
   ---
   ```

### Adding New Services

1. Create a new `.md` file in the `services/` directory
2. Use the `service` layout:
   ```yaml
   ---
   layout: service
   title: "Service Name"
   description: "Service description"
   ---
   ```

### Updating Team Information

Edit `team.md` to update team member information, including:
- Names and roles
- LinkedIn profile URLs
- Profile images
- Biographies

### Contact Form

The contact form uses FormSubmit for email delivery. The form is configured in `contact.md` and will send emails to `kvs.role1@gmail.com`.

## Customization

### Styling

The main stylesheet is located at `assets/css/style.css`. Key customization points:

- **Colors**: CSS custom properties (variables) at the top of the file
- **Typography**: Font families and sizes
- **Layout**: Grid systems and responsive design
- **Components**: Buttons, cards, and form styles

### Layouts

- **Default Layout**: `_layouts/default.html` - Main site layout
- **Service Layout**: `_layouts/service.html` - Service page layout

### Navigation

Update the navigation menu in `_config.yml`:

```yaml
navigation:
  - title: "Home"
    url: "/"
  - title: "About"
    url: "/about/"
  # Add more navigation items
```

## Troubleshooting

### Common Issues

1. **Jekyll not found**: Ensure Jekyll is installed globally
   ```bash
   gem install jekyll bundler
   ```

2. **Bundle install fails**: Try updating Ruby and gems
   ```bash
   gem update --system
   bundle update
   ```

3. **Build errors**: Check for syntax errors in Markdown files and YAML front matter

4. **GitHub Pages not updating**: 
   - Check GitHub Actions for build errors
   - Ensure the repository is public
   - Verify the workflow file is in `.github/workflows/`

### Testing

Use the provided test script:
```bash
# Windows
test-jekyll.bat

# Or manually
bundle exec jekyll build
bundle exec jekyll serve
```

## Maintenance

### Regular Updates

1. **Content Updates**: Regularly update service information, team details, and company news
2. **Security Updates**: Keep Jekyll and dependencies updated
3. **Performance**: Monitor site performance and optimize as needed

### Backup

- The repository serves as your backup
- Consider regular exports of the `_site` directory
- Keep local copies of important customizations

## Support

For technical support or questions about deployment:

- **Email**: kvs.role1@gmail.com
- **Documentation**: Check Jekyll documentation at https://jekyllrb.com/
- **GitHub Pages**: Check GitHub Pages documentation

## Next Steps

1. Test the site locally using the provided instructions
2. Push changes to GitHub to trigger automatic deployment
3. Verify the site is live at the GitHub Pages URL
4. Customize content and styling as needed
5. Set up monitoring and analytics if desired
