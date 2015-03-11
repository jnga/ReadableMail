# ReadableMail

ReadableMail is a small add-on fix for Apple Mail for improving the
readability of messages.

Apple Mail has a preference setting for the message font and size (Mail
\> Preferences \> Fonts & Colors: Message Font).

However, it ignores this setting with HTML messages that specify their own
fonts and sizes, which are increasingly the norm. This leaves the reader
stuck with type that can be too small or otherwise hard to read.

ReadableMail makes Apple Mail honor the Message Font preference setting
with HTML messages. Message body text will appear in the font and size of
the reader's choice.

Works with: OS X 10.10 Yosemite. May also work with OS X 10.9 Mavericks.

Inspired by: http://apple.stackexchange.com/questions/157104

This project is open source under the MIT License.

## Installation

### Installing or Updating

Download the latest .dmg installer under [Releases](../../releases).
Open and install.

### Uninstalling

Start the installer and choose Customize on the second screen. Uncheck the
ReadableMail package, leaving the Uninstall ReadableMail package checked.
Finish.

### Command Line

To use the command line instead of the installer, run the install.sh or
uninstall.sh script. Example: sudo ./install.sh

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
