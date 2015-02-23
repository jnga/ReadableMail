#!/bin/bash

# Create a disk image file for the installer.
#
# Usage: createdmg.sh {version-number}
#
# Example: ./createdmg.sh 1.0

if [ $# -le 0 ]
    then
        echo "This script must be run with a version number."
        echo -e "Usage: $0 {version-number}"
        exit 1
    fi

PROJNAME=ReadableMail
version=$1
dmgname=$PROJNAME-$version.dmg
sparseimage=$dmgname.sparseimage

# Change to this script's directory.
scriptdir=$(dirname $0)
cd $scriptdir

# Remove any old files.
rm $dmgname 2> /dev/null
rm $sparseimage 2> /dev/null

# Create a sparse disk image.
hdiutil create -size 100M -type SPARSE -volname "$PROJNAME" \
-fs HFS+ $sparseimage

# Attach the sparse image and parse its device name from the output.
devicename=$(hdiutil attach $sparseimage | \
egrep '^/dev/' | sed 1q | awk '{print $1}')

# Copy the installer into the sparse image.
cp -R ./build/$PROJNAME.mpkg /Volumes/$PROJNAME/

# Detach the sparse image. 
hdiutil detach -force $devicename

# Convert the sparse image into a distributable disk image file.
hdiutil convert "$sparseimage" -format UDZO -o "$dmgname" -ov \
-imagekey zlib-level=9

# Clean up.
rm $sparseimage 2> /dev/null