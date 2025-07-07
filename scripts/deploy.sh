#! /bin/bash

# Install Node.js
curl -fsSL https://rpm.nodesource.com/setup_18.x | bash -
yum install -y nodejs

# Download the JS file from S3
aws s3 cp s3://codebuild-practical/main-binary/hello-world.js /tmp/