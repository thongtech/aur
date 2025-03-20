# aur

My collection of improved PKGBUILDs for Arch Linux applications.

### Bootstrap Studio

- Extracted from AppImage - faster startup
- Updated with the latest versions
- Added `electron-flags.conf` support

### Cursor (AI Code Editor)

- Extracted from AppImage - faster startup
- Updated with the latest versions
- Added `electron-flags.conf` support
- Fixed double window header issue on GNOME/KDE ([issue #837](https://github.com/getcursor/cursor/issues/837))

### Studio 3T (MongoDB Client)

- Updated with the latest versions
- Removed useless shortcuts from desktop and app menu
- Cleaner installation, no `gendesk` needed

## Pre-Installation

1. Remove any existing AUR counterparts as they cannot coexist with these packages:

   ```
   sudo pacman -Rns <package name>
   ```

## Installation

1. Clone this repo:

   ```
   git clone https://github.com/thongtech/aur.git
   cd aur
   ```

2. Build and install your desired package:

   ```
   cd <package name>
   makepkg -si
   ```

Packages are installed with `-n` suffix to avoid confusion with the AUR counterparts, but they MUST not co-exist.
