berlios2git
===========

Export and BerliOS subversion repositories for fullstory and
fullstory-doc, for migrating them to individual git repositories.

##Howto

$ wget http://sourceforge.net/projects/svndumps.berlios/files/fullstory-svnroot.tar.gz/download -O./fullstory-svnroot.tar.gz

$ tar -xzf fullstory-svnroot.tar.gz

$ svn-all-fast-export --identity-map=authors-transform.txt --rules fullstory.rules fullstory/

##Further reading

- https://wiki.debian.org/PackagingWithGit/Svn-buildpackageConversion
- http://techbase.kde.org/Projects/MoveToGit/UsingSvn2Git
- http://madduck.net/blog/2007.10.07:converting-a-package-to-git/
- https://www.semitwist.com/articles/article/view/the-better-svn-git-guide

##Package list and mapping

###Current
* apt-conf-aptosid: apt-conf-sidux, apt-conf-aptosid
* linux-aptosid: linux-sidux-2.6, linux-aptosid-2.6, linux-aptosid
* pyfll
* udev-config-aptosid: kanotix-udev-config, udev-config-sidux, udev-config-aptosid

###Semi-current
* ar5523

###Morgue
* acer-acpi
* acerhk
* ddcxinfo: ddcxinfo-kanotix, ddcxinfo-sidux

###Unsorted historic Packages (pending)

* aptosid-art-apate
* aptosid-art-geras
* aptosid-art-imera
* aptosid-art-keres
* aptosid-art-legacy
* aptosid-art-meta
* aptosid-art-ponos
* aptosid-irc
* aptosid-keyring
* aptosid-manual
* aptosid-manual-reader
* aptosid-manual-transition-helper
* aptosid-scripts
* aptosid-settings-kde
* aptosid-settings-lxde
* aptosid-settings-xfce
* aptosid-transition-helper
* aptosid-vdr
* atl1e
* aufs
* automount-kanotix
* b43-asm
* btsco
* busybox-kanotix
* busybox-sidux
* ceni
* checkmem
* checkmem-kanotix
* cliinstaller
* configure-cups
* configure-dsl
* configure-freenx
* configure-gprs
* configure-isdn
* configure-keyboard
* configure-modemlink
* configure-mouse
* configure-ndiswrapper
* configure-networkcard
* configure-ppp-connections
* configure-screenres
* configure-xawtv
* configure-xawtv-kanotix
* cupsconfig-kanotix
* desktop-defaults
* distro-defaults
* dmakms
* dvb-detect
* eduversum
* eduversum-howto
* etcskel-kanotix
* etcskel-sidux
* firewall-kanotix
* firmware-carl9170
* fix-cdrom
* fix-fonts
* fll-builder
* fll-fshelper
* fll-gfx
* fll-installer
* fll-live-initramfs
* fll-live-initscripts
* fonts-ttf-decoratives
* fonts-ttf-west-european
* freenx
* fsam7400
* fusecram
* fuseiso
* gdm-themes-sidux
* gfxboot
* gfxboot-themes-aptosid
* gfxboot-theme-sidux
* gfxboot-theme-sidux-eros
* gfxboot-theme-sidux-old
* gfxboot-themes-sidux
* gprsconnect-kanotix
* grub2-fll-fromiso
* grub-gfxboot
* gtf
* hotplug-kanotix
* hwdata-kanotix
* hwsetup-kanotix
* hwsetup-ng
* infobash
* initscripts-kanotix-live
* initscripts-sidux-live
* install-gui
* install-meta
* install-progressbar
* install-usb-gui
* k3b-defaults-kanotix
* kanet
* kanotix2sidux
* kanotix-dsl
* kanotix-graphics
* kanotix-irc
* kanotix-isdn
* kanotix-kernelhacking
* kanotix-keyring
* kanotix-menu
* kanotix-ndiswrapper
* kanotix-remountrw
* kanotix-screenres
* kanotix-scripts
* kanotix-searchplugins
* kanotix-setpassword
* kanotix-sounds
* kanotix-su
* kanotix-terminalserver
* kanotix-vdr
* kbdconfig-kanotix
* kdeadmin
* kdelock-kanotix
* kdeservicemenus-kanotix
* kdeservicemenus-sidux
* kde-services-kanotix
* kde-services-sidux
* kdm-theme-kanotix-penguins
* kernel-remover
* klik
* knxcc
* knx-installer
* knxinstaller
* ksplash-theme-kanotix-clouds
* ksplash-theme-kanotix-penguins
* ksplash-theme-sidux-2006
* ksplash-theme-sidux-preview
* kudzu-kanotix
* libconfig-source-perl
* linux-modules-extra-2.6
* linux-modules-sidux-main-2.6
* lirc
* live-initrd-kanotix
* live-initrd-sidux
* live-terminalserver-sidux
* liveusb-creator
* ltmodem-detect
* mkdesktophdicons-kanotix
* mkdosswapfile
* mkdosswapfile-kanotix
* mkpersistenthome
* mkpersistenthome-kanotix
* modemlink-kanotix
* mouseconfig-kanotix
* ndiswrapper
* netcardconfig-kanotix
* networkconfig-kanotix
* networkconfig-sidux
* notes.txt
* nxsetup
* nxsetup-kanotix
* omnibook
* openfwwf
* pdf-printerconfig-kanotix
* playvideodisk
* playvideodisk-kanotix
* ppp-scripts
* ppp-scripts-kanotix
* print-utils-pfeifle-kanotix
* pyfll-installer
* python-fll
* qt-fll-iso2usb-gui
* r5u870
* ralink-fwcutter
* rebuildfstab
* rebuildfstab-kanotix
* rebuildfstab-sidux
* restartx
* restartx-kanotix
* rfswitch
* rootshell
* rootshell-kanotix
* rt61
* rt73-legacy
* sambastart
* sambastart-kanotix
* sambastart-sidux
* saveconfig
* saveconfig-kanotix
* scanpartitions
* scanpartitions-kanotix
* seminarix
* seminarix-handbook
* seminarix-latex
* seminarix-notebook-training
* seminarix-samples
* server-defaults
* setpassword
* sidux-art-aether
* sidux-art-aethir
* sidux-art-erebos
* sidux-art-gfxbootsplash
* sidux-art-gnome
* sidux-art-gnome-eros
* sidux-art-gnome-gaia
* sidux-art-gnome-nyx
* sidux-art-hypnos
* sidux-art-kde
* sidux-art-kde-eros
* sidux-art-kde-gaia
* sidux-art-kde-nyx
* sidux-art-kde-tartaros
* sidux-art-keres
* sidux-art-legacy
* sidux-art-meta
* sidux-art-momos
* sidux-art-moros
* sidux-art-ouranos
* sidux-art-ourea
* sidux-art-pontos
* sidux-art-uranos
* sidux-art-wallpaper
* sidux-art-wallpaper-erebos
* sidux-art-wallpaper-erebos-edu
* sidux-art-wallpaper-erebus
* sidux-art-wallpaper-eros
* sidux-art-wallpaper-eros-edu
* sidux-art-wallpaper-gaia
* sidux-art-wallpaper-nyx
* sidux-art-wallpaper-nyx-edu
* sidux-art-wallpaper-tartaros
* sidux-art-website
* sidux-artwork-competition
* sidux-art-xfce
* sidux-binary-gfx
* sidux-browser
* siduxcc
* sidux-edu
* sidux-framework
* sidux-graphics
* sidux-hermes
* sidux-icons
* sidux-irc
* sidux-kernelhacking
* sidux-keyring
* sidux-manual
* sidux-manual-reader
* sidux-menu
* sidux-scripts
* sidux-searchplugins
* sidux-server-config
* sidux-setpassword
* sidux-settings-kde
* sidux-settings-lxde
* sidux-settings-xfce
* sidux-vdr
* sidux-xdg
* sitar
* smbconf-kanotix
* smbconf-sidux
* splashy-theme-kanotix-penguins
* sshstart
* sshstart-kanotix
* sshstart-sidux
* startsyslog
* startsyslog-kanotix
* startsyslog-sidux
* sudoers-kanotix
* sudoers-sidux
* sudores-sidux
* su-me
* sysv-freeze
* teclasat
* ttf-sidux
* usleep-kanotix
* vdr-gui
* xdg-browser-launcher
* xf86config-kanotix
* xf86config-sidux
* xorgconfig
* xorgconfig-sidux
* xsession-initscript-kanotix
* xsession-initscript-sidux
* xsession-kanotix
* xsession-sidux

