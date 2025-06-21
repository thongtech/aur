# aur

My collection of improved PKGBUILDs for Arch Linux applications and kernels.

### Bootstrap Studio (Website Builder)

- Extracted from AppImage — faster startup
- Updated to the latest version
- Added `electron-flags.conf` support

### Cursor (AI Code Editor)

- Extracted from AppImage — faster startup
- Updated to the latest version
- Added `electron-flags.conf` support

### Studio 3T Community Edition (MongoDB Client)

- Updated to the latest version
- Removed useless shortcuts from desktop and app menu
- Cleaner installation, no `gendesk` needed

### Linux-888 (Custom Kernel)

- A **high-performance Arch Linux kernel** based on CachyOS's [linux-cachyos-bore](https://github.com/CachyOS/linux-cachyos/tree/master/linux-cachyos-bore), aiming for minimal module footprint through `localmodconfig`
- Optimised for modern x86_64 desktop systems with **significant size and performance improvements**
- **It's LIGHTER — up to 50%!**
  - All unused filesystems and drivers **removed** (See [modprobed.db](https://wiki.archlinux.org/title/Modprobed-db))
  - Unnecessary hardware support and protocols **disabled**
  - Enterprise and virtualisation features **stripped**
  - Debugging, tracing, and coredump overhead **eliminated**
- **It's FASTER**
  - **Native CPU optimisations** tailored to your CPU
  - **Full preemption** with dynamic scheduling
  - **1000Hz tick rate** for reduced latency
  - **O3** compiler optimisations enabled
  - **Full LTO** link-time optimisation
  - **Transparent HugePages** always active
  - **TCP BBRv3** congestion control implemented
- **It's still SECURE**
  - Essential security modules **retained**
  - **User namespace support** for containerisation
- **Important: `PKGBUILD` requires customisation** to match your specific hardware and usage patterns as it is based on my system

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

Except for `linux-888`, packages are installed with `-n` suffix to avoid confusion with the AUR counterparts, but they MUST not co-exist.
