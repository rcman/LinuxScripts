#!/bin/bash

# Check if running as root
if [ "$EUID" -ne 0 ]; then
    echo "Please run this script as root (use sudo)"
    exit 1
fi

# Update package list
apt update

# Install essential packages
apt install -y \
    build-essential \
    libncurses-dev \
    flex \
    bison \
    openssl \
    libssl-dev \
    dkms \
    libelf-dev \
    libudev-dev \
    libpci-dev \
    libiberty-dev \
    autoconf \
    git

# Optional: Install additional tools useful for kernel development
apt install -y \
    dwarves \
    cpio \
    rsync \
    kmod

echo "Installation complete. Packages are ready for kernel compilation."