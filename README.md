# unofficial-webapp-office2
 
A rewrite of [unofficial-webapp-office](https://github.com/sirredbeard/unofficial-webapp-office), breaking from the upstream [icloud-for-linux](https://github.com/cross-platform/icloud-for-linux).

Instead of using Qt5, Qt5 WebEngine, C++, and QML, unofficial-webapp-office2 uses GTK3, [WebKitGTK](https://webkitgtk.org/), and [Nim](https://nim-lang.org/).

Uses GitHub Actions and [sirredbeard/snap-build](https://github.com/sirredbeard/snap-build) container to remote-build on Canonical Launchpad.

Supports Wayland.