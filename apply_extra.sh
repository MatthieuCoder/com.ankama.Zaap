#!/bin/bash

APP_IMAGE="/app/extra/Dofus_3.0-x86_64.AppImage"

# Allow image to execute

chmod +x $APP_IMAGE

# Extract image

unappimage $APP_IMAGE

# Install data

DEST="/app/extra/bin/"
mkdir $DEST
cp -r squashfs-root/* $DEST

# Clean up
rm -rf squashfs-root/
rm $APP_IMAGE
