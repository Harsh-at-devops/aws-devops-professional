#! /bin/bash

# Install Node.js
curl -fsSL https://rpm.nodesource.com/setup_18.x | bash -
yum install -y nodejs

echo "Copying deployment bundle to /tmp/myapp using rsync"
rm -rf /tmp/myapp
mkdir -p /tmp/myapp

rsync -av --exclude='/tmp/myapp' ./ /tmp/myapp/