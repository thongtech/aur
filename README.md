# aur

My collection of improved PKGBUILDs for Arch Linux applications.

### Bootstrap Studio (Website Builder)

- Extracted from AppImage - faster startup
- Updated to the latest version
- Added `electron-flags.conf` support

### Cursor (AI Code Editor)

- Extracted from AppImage - faster startup
- Updated to the latest version
- Added `electron-flags.conf` support

### Studio 3T (MongoDB Client)

- Updated to the latest version
- Removed useless shortcuts from desktop and app menu
- Cleaner installation, no `gendesk` needed

### Mesa (Graphics Stack)

- Updated to the latest version
- Reverted the [problematic commit](https://gitlab.freedesktop.org/mesa/mesa/-/commit/8c91624614c1f939974fe0d2d1a3baf83335cecb) that causes artefacts on AMD iGPU ([issue #12809](https://gitlab.freedesktop.org/mesa/mesa/-/issues/12809))

### Linux-888 (Custom Kernel)

- Arch Linux kernel based on CachyOS's latest [linux-cachyos-bore](https://github.com/CachyOS/linux-cachyos/tree/master/linux-cachyos-bore)
- Full support for Qualcomm FastConnect 7800 Wi-Fi 7 cards (WCN785x chipset), including:
  - Latest `ath` drivers from the [ath-next Git branch](https://web.git.kernel.org/pub/scm/linux/kernel/git/ath/ath.git/log/?h=ath-next), with all the latest fixes and improvements
  - Support for 14 new USB device IDs from `linux-next` ([commit c7629c](https://web.git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/drivers/bluetooth/btusb.c?h=next-20250328&id=c7629ccfa175e16bb44a60c469214e1a6051f63d), [commit 2dd1c1](https://web.git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/drivers/bluetooth/btusb.c?h=next-20250328&id=2dd1c1eee3e496fcc16971be4db5bb792a36025c)) — crucial for Bluetooth audio support
- Workarounds applied to mitigate crashes on AMD iGPUs when watching accelerated video ([issue #3926](https://gitlab.freedesktop.org/drm/amd/-/issues/3926)) — tested with the patched Mesa (above)
- All performance optimisation options are enabled + ThinLTO

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
