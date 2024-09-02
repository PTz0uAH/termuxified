#!/data/data/com.termux/files/usr/bin/sh
# for Termux without Lazarus

# get the smallest release of fpcdoc in txt format

# a great way to make double-use of it is to let your students write
# their own interface to the fpc docs (from commandline)
# and (from X11/XFCE4) as gtk2 application when Lazarus is ported to Termux (WIP).

# ip6 gave troubles so switched to ip4
wget -4 https://sourceforge.net/projects/freepascal/files/Documentation/3.2.2/doc-txt.zip

unzip doc-txt.zip

# the doc dir contains the documentation to be merged with $FPCDIR

# now create the deb file which should install the docs in $FPCDIR
# in $PREFIX/opt/fpc-3.2.2.arm-termux for Termux ARM
# in $PREFIX/opt/fpc-3.2.2.aarch64-termux for Termux AARCH64
