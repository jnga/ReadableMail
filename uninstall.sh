#!/bin/bash

# uninstall.sh: Uninstall the message style overrides.

# Remove all the lines between the begin and end markers in the
# message CSS, with a backup file in case of error. 
sed -i".bak" \
'/\/\* BEGIN ReadableMail styles \*\//,/\/\* END ReadableMail styles \*\//d' \
/Applications/Mail.app/Contents/Resources/Message.css
