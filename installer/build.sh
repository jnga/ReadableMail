#!/bin/bash

# Build the project and create the installer file.
#
# Usage: build.sh {version-number}
#
# Example: ./build.sh 1.0

if [ $# -le 0 ]
    then
        echo "This script must be run with a version number."
        echo -e "Usage: $0 {version-number}"
        exit 1
    fi

PROJNAME=ReadableMail
version=$1

# Change to this script's directory.
scriptdir=$(dirname $0)
cd $scriptdir

# Build the project using the Packages application.
/usr/local/bin/packagesbuild -v ./$PROJNAME.pkgproj

# Create the installer.
./createdmg.sh $version
