#!/bin/bash


# Fetch and unpack

version=v1.40

#arch=arm64
arch=amd64

# https://downloads.rclone.org/v1.40/rclone-v1.40-linux-amd64.zip
cd /tmp
curl -O https://downloads.rclone.org/${version}/rclone-${version}-linux-${arch}.zip
unzip rclone-${version}-linux-${arch}.zip
cd rclone-*-linux-${arch}


# Copy binary file
sudo cp rclone /usr/sbin/
sudo chown root:root /usr/sbin/rclone
sudo chmod 755 /usr/sbin/rclone

# Install manpage
sudo mkdir -p /usr/local/share/man/man1
sudo cp rclone.1 /usr/local/share/man/man1/
sudo mandb

# Run rclone config to setup. See rclone config docs for more details.
rclone --version
rclone config
