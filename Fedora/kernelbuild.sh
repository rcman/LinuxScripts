#!/bin/bash

# Check if running as root
if [ "$EUID" -ne 0 ]; then
    echo "Please run this script as root (use sudo)"
    exit 1
fi

# Update package list
dnf check-update

# Install essential packages
dnf install -y \
    @development-tools \
    elfutils-libelf-devel \
    ncurses-devel \
    flex \
    bison \
    openssl-devel \
    dwarves \
    bc \
    rsync \
    cpio \
    kmod \
    git \
    patch \
    diffutils

# For UEFI support (optional)
dnf install -y efivar-libs

echo "Installation complete. Packages are ready for kernel compilation."