#! /bin/bash

# Install Node.js
curl -fsSL https://rpm.nodesource.com/setup_18.x | bash -
yum install -y nodejs

echo "Copying all deployment files to /tmp/myapp"
mkdir -p /tmp/myapp
cp -r . /tmp/myapp/