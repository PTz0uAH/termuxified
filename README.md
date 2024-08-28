Welcome Termux devs..

"Termuxified" means "adapted for usage with Termux"

Current project: FreePascal v3.2.2 (stable) for Termux

"Termuxified" builds:
- fpc-3.2.2.arm-termux.deb (available)
- fpc-3.2.2.aarch64-termux.deb (wip)

Coming soon/wishlist:
- fpcmkcfg-3.x.deb ( single executable to get you started i.e. with incomplete android (arm/aarch64) builds from freepascal.org )
- fpc-3.x.cross-amiga.deb
- lazarus4termux (X11) on XFCE4 desktop (Integrated Development Environment)
- cge4termux (X11) on XFCE4 desktop (Castle Game Engine)
- and more..

Todo:
- make standalone fpc-3.2.2 source package, independent from architecture (arm/aarch64)
- remove source-tree from fpc-3.2.2.(arm|aarch64)-termux.deb to decrease its size (GH complains and warns pushing the debs if exceeding 50Mb but tolerates up to 100Mb per file)
- compiling the build-tool of CGE did not yet succeed.. help wanted! 

note: because I'm not using LFS or seperate hosting for bigger deb-files you are strongly adviced to "clone" my repo with option "--depth 1" to ignore debs from history which can slow down the download-process significantly!

With kind regards,

PTz()uAH

ergo: IT-students should be able to build a FPC distr/deb from scratch while ICT-students would depend on tools like fpcupdeluxe or preconfigured packages which are not (yet) available for arm|aarch64-android..
