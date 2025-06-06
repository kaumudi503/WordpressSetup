#!/bin/bash
set -e

# Create plugin folder structure
mkdir -p wp-content/plugins

# Download and unzip WordPress core directly into current directory
curl -o wordpress.zip https://wordpress.org/latest.zip
unzip wordpress.zip
cp -r wordpress/* ./                 # Copy WP core files/folders to current dir
cp -r wordpress/.* ./ 2>/dev/null || true  # Copy hidden files (e.g., .htaccess)
rm -rf wordpress wordpress.zip

# Download Contact Form 7 plugin
curl -L -o wp-content/plugins/contact-form-7.zip https://downloads.wordpress.org/plugin/contact-form-7.latest-stable.zip
unzip wp-content/plugins/contact-form-7.zip -d wp-content/plugins/
rm wp-content/plugins/contact-form-7.zip

# Download GTM plugin
curl -L -o wp-content/plugins/gtm.zip https://downloads.wordpress.org/plugin/duracelltomi-google-tag-manager.latest-stable.zip
unzip wp-content/plugins/gtm.zip -d wp-content/plugins/
rm wp-content/plugins/gtm.zip
