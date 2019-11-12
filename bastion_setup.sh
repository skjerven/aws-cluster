#!/bin/bash
# setup awscli, parallelcluster on Ubuntu 18.04

# install basic tools
apt-get install -y wget ruby python-pip zstd bzip2 zip unzip jq rsync build-essential

# install awscli and parallelcluster
pip install awscli aws-parallelcluster

# codedeploy agent
cd /tmp
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
chmod +x ./install
./install auto
systemctl restart codedeploy-agent
