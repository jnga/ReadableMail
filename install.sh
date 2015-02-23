#!/bin/bash

# install.sh: Install or update the message style overrides.

# Change to this script's directory.
scriptdir=$(dirname $0)
cd $scriptdir

# Uninstall any prior version.
source ./uninstall.sh

# Append the style overrides to the message CSS.
cat message-style-overrides.css >> \
/Applications/Mail.app/Contents/Resources/Message.css
