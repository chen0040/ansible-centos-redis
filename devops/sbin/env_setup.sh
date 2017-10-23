#!/usr/bin/env bash

sudo yum update -y
sudo yum upgrade -y
sudo yum groupinstall "Development tools" -y
sudo yum install -y epel-release
sudo yum install -y ansible