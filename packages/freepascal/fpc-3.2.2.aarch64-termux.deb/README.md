Welcome Termux devs..

"Termuxified" means "adapted for usage with Termux"

Here you can get some minimal info on how package "fpc-3.2.2.aarch64-termux.deb" was created/deployed.
- get the 3.2.0 distri of Freepascal for Aarch64-Android via https://www.freepascal.org and install it.
- use "$FPCDIR/bin/fpcmkcfg" to create "$HOME/.fpc.cfg" or create it manually
- get and unpack 3.2.2 source and cd into its location
- perform "make zipinstall" and "make zipsourceinstall" with correct params using the old fpc as bootstrap compiler
- unpack both archives to 1 single folder named fpc-3.2.2.aarch64-termux
- create fpc-3.2.2.aarch64-termux.tar.gz + install_freepascal.sh script + manifest
- create fpc-3.2.2.aarch64-termux.deb with "termux-create-package"
- deploy via "termux-apt-repo" and github pages

visit https://wiki.freepascal.org/ for more specific information about FreePascal!

Unfortunately it still takes a fair share of "manual labour" but that's the way it is for now. 

As thee want to be a pascal-dev some initiative has to be taken to make it work flawless on Termux.

A real release version would be PGP signed to be trusted when issuing "pkg se fpc" or "pkg in fpc". 

During development though you can make use of a clever work-around.

Work-around for the package-manager:
"to include my experimental repo you need to perform the following actions"
- mkdir "$PREFIX/etc/apt/sources.list.d" (if not exists)
- echo  "deb [trusted=yes] https://ptz0uah.github.io/packages termux extras" >$PREFIX/etc/apt/sources.list.d/ptz0uah.list

Test my repo:
- pkg search fpc

Installation:
Install to "$PREFIX/opt" manually via "dpkg -i fpc-3.2.2.aarch64-termux.deb" or semi-automatic via "pkg install fpc"
"in either way you need to perform the following actions"
- cd $PREFIX/opt
- ./install_freepascal.sh
  
Hint: study "install_freepascal.sh" and adapt "$HOME/.bashrc" to set PATH and EXPORTS for permanent availability of FreePascal.
If you do not want to modify "$HOME/.bashrc" you can call "install_freepascal.sh" once if you want to use "fpc" in a new terminal window.
Once the binaries are "first-time" installed consequently the "install_freepascal.sh" just sets the environment.

Removal:
- "pkg uninstall fpc" will remove $PREFIX/opt/fpc-3.2.2.aarch64-termux.tar.gz and $PREFIX/opt/install_freepascal.sh so make sure you do not remove those files by hand.
- remove any softlinks made by "install_freepascal.sh" i.e. "rm $PREFIX/bin/fpc"
- remove the physical installation "rm -rf $PREFIX/opt/fpc-3.2.2.aarch64-termux"
- remove edits from "~/.bashrc"
- remove the deb file if downloaded
 
Todo: make the deb signed so all the manual actions are performed "automagically"

FPC4Termux Development Overview:

Status: alpha

Support: no

Usage-at-own-risk: WIP! 

"Have tons of fun coding with FreePascal"

With kind regards,

PTz()uAH
