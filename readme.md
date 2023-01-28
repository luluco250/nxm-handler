# nxm-handler: Nexus Mods scheme handler for Linux.

This script finds the first running instance of Mod Organizer 2 and calls it
with the link provided.

You can install it with `sudo make install`, which will copy `nxm-handler` and
`nxm-handler.desktop` to `/usr/local/bin` and `/usr/local/share/applications`
respectively.

Alternatively, you can change the installation prefix using
`PREFIX=<prefix> make install`

In case it doesn't get recognized, just point your browser to call `nxm-handler`
directly and it should still work.
