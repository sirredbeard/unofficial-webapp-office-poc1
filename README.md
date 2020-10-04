# unofficial-webapp-office2
 
A rewrite of [unofficial-webapp-office](https://github.com/sirredbeard/unofficial-webapp-office), breaking from the upstream [icloud-for-linux](https://github.com/cross-platform/icloud-for-linux).

Unofficial-webapp-office2 uses a GTK3, [WebKitGTK](https://webkitgtk.org/), and [Nim](https://nim-lang.org/) stack. 

This replaces the previous Qt5, Qt5 WebEngine, C++, and QML stack.

Reduces snap package size from 115M to <1 M.

Supports Wayland.

Uses [GitHub Actions](https://github.com/sirredbeard/unofficial-webapp-office2/tree/main/.github/workflows) and my [snap-build](https://github.com/sirredbeard/snap-build) container with the latest version of [snapcraft](https://snapcraft.io/build) to [remote-build](https://snapcraft.io/docs/remote-build) on Canonical's Launchpad.

build.nim parses apps.csv to create individual 'apps' from a template, main.nim.

The app name and icon is handled by .desktop files in /snap/gui/ and snapd.

main.nim relies on [webgui](https://github.com/juancarlospaco/webgui).

The snap package relies on the [gnome-3-34 extension](https://snapcraft.io/blog/gnome-3-34-snapcraft-extension).

To do:

* Custom css theme

Built with [Ubuntu on WSL](https://ubuntu.com/wsl).
