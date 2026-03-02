#!/bin/bash
# Project: Automated Secure Portal
# Author: Sonal Solanki (Aspiring Cloud Engineer)

echo "--- 🚀 Sonal's Automation Starting ---"

# 1. Build the Directory
mkdir -p /usr/share/testpage/secure_portal

# 2. Build the Landing Page
echo "<h1>Welcome to Sonal's Cloud Lab</h1>" > /usr/share/testpage/secure_portal/index.html

# 3. Build the Bridge (Symlink)
ln -sf /usr/share/testpage/secure_portal /usr/share/nginx/html/secure_portal

# 4. Refresh Nginx to apply changes
nginx -s reload

echo "--- ✅ Deployment Complete! Check http://172.17.0.2/secure_portal/ ---"
