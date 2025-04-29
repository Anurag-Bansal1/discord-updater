#!/bin/bash

set -e

# Read package details from the control file
PACKAGE_NAME=$(grep '^Package:' ./debian/control | awk '{print $2}')
VERSION=$(grep '^Version:' ./debian/control | awk '{print $2}')
BUILDS_DIR="./builds"
OUTPUT="${BUILDS_DIR}/${PACKAGE_NAME}_${VERSION}.deb"
TEMP_DIR="/dev/shm/${PACKAGE_NAME}_build"

# Clean previous temp dirs on exit
trap 'rm -rf "$TEMP_DIR"' EXIT
mkdir -p "$BUILDS_DIR"
mkdir -p "$TEMP_DIR/DEBIAN"
mkdir -p "$TEMP_DIR/usr/local/bin"

# Copy the control file
cp ./debian/control "$TEMP_DIR/DEBIAN/control"

# Copy the script
cp src/discord-updater "$TEMP_DIR/usr/local/bin/$PACKAGE_NAME"
chmod 755 "$TEMP_DIR/usr/local/bin/$PACKAGE_NAME"

# Build the .deb package
dpkg-deb --build "$TEMP_DIR" "$OUTPUT"

echo "✅ Build complete: $OUTPUT"

# Made by Anurag Bansal <https://github.com/Anurag-Bansal1>
