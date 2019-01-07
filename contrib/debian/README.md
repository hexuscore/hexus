
Debian
====================
This directory contains files used to package hexusd/hexus-qt
for Debian-based Linux systems. If you compile hexusd/hexus-qt yourself, there are some useful files here.

## hexus: URI support ##


hexus-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install hexus-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your hexus-qt binary to `/usr/bin`
and the `../../share/pixmaps/hexus128.png` to `/usr/share/pixmaps`

hexus-qt.protocol (KDE)

