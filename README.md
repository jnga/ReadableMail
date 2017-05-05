# ReadableMail

ReadableMail is a small add-on fix for Apple Mail to make messages
easier to read, by better honoring the user’s preferences for default
font and size.

## Details

Apple Mail has a preference setting for the message font and size (Mail
\> Preferences \> Fonts & Colors: Message Font).

Unfortunately, it ignores this setting with HTML messages that specify their
own fonts and sizes, which are increasingly the norm. This can leave the
reader stuck with type is too small or otherwise hard to read.

ReadableMail makes Apple Mail honor the Message Font preference setting
with HTML messages. Message body text will appear in the font and size of
the reader’s choice.

## System Requirements

Works with Mac OS versions: 10.12 “Sierra,” 10.11 “El Capitan,” and
10.10 “Yosemite.”

Note: on OS versions 10.11 and higher, installation requires turning off
System Integrity Protection (SIP). After installation, SIP can be turned
back on again.

## Installation

### Installing or Updating

Download the latest .dmg installer under [Releases](../../releases).

If you are running OS version 10.11 or higher, turn off System Integrity
Protection (SIP).

Open the installer and and install.

If you turned off SIP, turn it back on.

### Uninstalling

Start the installer and choose Customize on the second screen. Uncheck the
ReadableMail package, leaving the Uninstall ReadableMail package checked.
Finish.

Note: on OS versions 10.11 and higher, SIP will need to be turned off in
order to uninstall.

### Command Line

To use the command line instead of the installer, run the install.sh or
uninstall.sh script. Example: sudo ./install.sh

Previous notes regarding SIP on OS versions 10.11 and higher apply.

## Background

In the past, Apple Mail had a hidden preference setting, PreferPlainText,
which would allow defaulting to a plain text version if it was delivered
along with an HTML email message. This setting was eventually dropped.

Also dropped was the menu options within mail that allow even manual
switching to a plain text or other alternative message format. So in a
multi-part email message, only the HTML version can now be viewed.

Dropped too was another hidden preference setting, MinimumHTMLFontSize.
This used to allow setting a minimum size for text within HTML messages
in order to avoid excessively tiny text.

The remaining preference in Mail for viewing messages is Message Font,
which does not apply to HTML messages. It applies only to messages
which were composed as plain text, of which fewer exist these days. This
is not obvious nor explained well in the interface.

The seemingly user-hostile removal of features that allow people to keep
from having to constantly either squint at or zoom messages with tiny type
is baffling. Other popular email clients, such as Outlook, are not very good
with it either. Perhaps there has been pressure to allow for HTML-formatted
messages that are guaranteed to look a certain way, polished and unbroken,
for marketing purposes.

## Development Notes

The installer was built using the free tool
[Packages](http://s.sudre.free.fr/Software/Packages/about.html).

To make a new .dmg file for release, run the installer/build.sh script
with a version number. Example: ./build.sh 1.0

Or, to build manually from within Packages:

1. Open the .pkgproj file in Packages.

2. Build the project in Packages.

3. At the command line, run the installer/createdmg.sh script with a version
number. Example: ./createdmg.sh 1.0

## Credits

Inspired by the answer at: http://apple.stackexchange.com/questions/157104

## License

This project is open source under the MIT License.