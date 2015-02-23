#!/bin/bash

# install.sh: Install or update the message style overrides.

# Uninstall first.
source ./uninstall.sh

# Append the style overrides to the message CSS.
cat message-style-overrides.css >> \
/Applications/Mail.app/Contents/Resources/Message.css
