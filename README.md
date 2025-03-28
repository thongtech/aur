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

### Studio 3T (MongoDB Client)

- Updated with the latest versions
- Removed useless shortcuts from desktop and app menu
- Cleaner installation, no `gendesk` needed

### Mesa

- Updated with the latest versions
- Reverted the [problematic commit](https://gitlab.freedesktop.org/mesa/mesa/-/commit/8c91624614c1f939974fe0d2d1a3baf83335cecb) that causes artefacts on AMD iGPU ([issue #12809](https://gitlab.freedesktop.org/mesa/mesa/-/issues/12809))

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

Except for `mesa`, packages are installed with `-n` suffix to avoid confusion with the AUR counterparts, but they MUST not co-exist.
