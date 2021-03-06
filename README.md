berlios2git
===========
Export BerliOS subversion repositories for fullstory and fullstory-doc,
to migrate them into individual git repositories.

##Howto
- wget http://sourceforge.net/projects/svndumps.berlios/files/fullstory-svnroot.tar.gz/download -O./fullstory-svnroot.tar.gz
- tar -xzf fullstory-svnroot.tar.gz
- wget http://sourceforge.net/projects/svndumps.berlios/files/fullstory-doc-svnroot.tar.gz/download -O./fullstory-doc-svnroot.tar.gz
- tar -xzf fullstory-doc-svnroot.tar.gz
- svn-all-fast-export --identity-map=authors-transform.txt --rules fullstory.rules fullstory/
- svn-all-fast-export --identity-map=authors-transform.txt --rules fullstory-doc-prequel.rules fullstory/
- svn-all-fast-export --identity-map=authors-transform.txt --rules fullstory-doc.rules fullstory-doc/

###Backup
- zcat fullstory-svnroot.tar.gz | pixz -9 > fullstory-svnroot.tar.xz
- zcat fullstory-doc-svnroot.tar.gz | pixz -9 > fullstory-doc-svnroot.tar.xz
- svnadmin dump fullstory | pixz -9 > fullstory.dump.xz
- svnadmin dump fullstory-doc | pixz -9 > fullstory-doc.dump.xz

##Further reading
- https://wiki.debian.org/PackagingWithGit/Svn-buildpackageConversion
- http://techbase.kde.org/Projects/MoveToGit/UsingSvn2Git
- http://madduck.net/blog/2007.10.07:converting-a-package-to-git/
- https://www.semitwist.com/articles/article/view/the-better-svn-git-guide

##Package list and mapping
###Current
* apt-conf-aptosid: apt-conf-sidux, apt-conf-aptosid
* aptosid-art-legacy: sidux-art-legacy, aptosid-art-legacy
* aptosid-art-meta: sidux-art-meta, aptosid-art-meta
* aptosid-irc: kanotix-irc, sidux-irc, aptosid-irc
* aptosid-keyring: kanotix-keyring, sidux-keyring, aptosid-keyring
* aptosid-manual: sidux-manual, aptosid-manual
* aptosid-scripts: kanotix-scripts, sidux-scripts, aptosid-scripts
* aptosid-settings-kde: sidux-settings-kde, aptosid-settings-kde
* aptosid-settings-xfce: sidux-settings-xfce, aptosid-settings-xfce
* b43-asm
* configure-cups: cupsconfig-kanotix, configure-cups
* desktop-defaults
* dmakms
* firmware-carl9170
* fll-installer
* fll-live-initramfs
* fll-live-initscripts
* fll-gfx
* gfxboot-themes-aptosid: gfxboot-themes-sidux, gfxboot-themes-aptosid
* grub2-fll-fromiso
* infobash
* install-gui
* install-usb-gui
* kernel-remover: kanotix-kernelhacking, sidux-kernelhacking, kernel-remover
* linux-aptosid: linux-sidux-2.6, linux-aptosid-2.6, linux-aptosid
* openfwwf
* pyfll
* python-fll
* setpassword: kanotix-setpassword, sidux-setpassword, setpassword
* sshstart: sshstart-kanotix, sshstart-sidux, sshstart
* udev-config-aptosid: kanotix-udev-config, udev-config-sidux, udev-config-aptosid
* xdg-browser-launcher: sidux-browser, xdg-browser-launcher

###Morgue
* acer-acpi
* acerhk
* aptosid-art-apate
* aptosid-art-geras
* aptosid-art-hesperides
* aptosid-art-imera
* aptosid-art-keres: sidux-art-keres, aptosid-art-keres
* aptosid-art-nemesis
* aptosid-art-ponos
* aptosid-art-thanatos
* aptosid-manual-reader: sidux-manual-reader, aptosid-manual-reader
* aptosid-manual-transition-helper
* aptosid-settings-lxde: sidux-settings-lxde, aptosid-settings-lxde
* aptosid-transition-helper
* aptosid-vdr: kanotix-vdr, sidux-vdr, aptosid-vdr
* ar5523
* atl1e
* aufs
* automount-kanotix
* busybox-sidux: busybox-kanotix, busybox-sidux
* btsco
* ceni
* checkmem: checkmem-kanotix, checkmem
* cliinstaller
* configure-dsl: kanotix-dsl, configure-dsl
* configure-freenx: nxsetup, nxsetup-kanotix, configure-freenx
* configure-gprs: gprsconnect-kanotix, configure-gprs
* configure-isdn: kanotix-isdn, configure-isdn
* configure-keyboard: kbdconfig-kanotix, configure-keyboard
* configure-modemlink: modemlink-kanotix, configure-modemlink
* configure-mouse: mouseconfig-kanotix, configure-mouse
* configure-ndiswrapper: kanotix-ndiswrapper, configure-ndiswrapper
* configure-networkcard: netcardconfig-kanotix, configure-networkcard
* configure-ppp-connections
* configure-screenres: kanotix-screenres, configure-screenres
* configure-xawtv: configure-xawtv-kanotix, configure-xawtv
* ddcxinfo: ddcxinfo-kanotix, ddcxinfo-sidux
* distro-defaults
* dvb-detect
* eduversum
* eduversum-howto
* etcskel-sidux: etcskel-kanotix, etcskel-sidux
* firewall-kanotix
* fix-cdrom
* fix-fonts
* fll-builder
* fll-fshelper
* freenx
* fsam7400
* fusecram
* fuseiso
* gdm-themes-sidux
* gfxboot
* gfxboot-theme-sidux
* gfxboot-theme-sidux-eros
* gfxboot-theme-sidux-old
* gtf
* grub-gfxboot
* hotplug-kanotix
* hwdata-kanotix
* hwsetup-kanotix
* hwsetup-ng
* initscripts-sidux-live: initscripts-kanotix-live, initscripts-sidux-live
* install-meta
* install-progressbar
* k3b-defaults-kanotix
* kanet
* kanotix2sidux
* kanotix-remountrw
* kdelock-kanotix
* kdeservicemenus-sidux: kdeservicemenus-kanotix, kdeservicemenus-sidux
* kde-services-sidux: kde-services-kanotix, kde-services-sidux
* kdm-theme-kanotix-penguins
* klik
* knx-installer: knxinstaller, knx-installer
* ksplash-theme-kanotix-clouds
* ksplash-theme-kanotix-penguins
* ksplash-theme-sidux-2006
* ksplash-theme-sidux-preview
* kudzu-kanotix
* libconfig-source-perl
* linux-modules-sidux-main-2.6: linux-modules-extra-2.6, linux-modules-sidux-main-2.6
* lirc
* live-initrd-sidux: live-initrd-kanotix, live-initrd-sidux
* live-terminalserver-sidux: kanotix-terminalserver, live-terminalserver-sidux
* liveusb-creator
* ltmodem-detect
* mkdesktophdicons-kanotix
* mkdosswapfile: mkdosswapfile-kanotix, mkdosswapfile
* mkpersistenthome: mkpersistenthome-kanotix, mkpersistenthome
* ndiswrapper
* networkconfig-sidux: networkconfig-kanotix, networkconfig-sidux
* omnibook
* pdf-printerconfig-kanotix
* playvideodisk: playvideodisk-kanotix, playvideodisk
* ppp-scripts: ppp-scripts-kanotix, ppp-scripts
* print-utils-pfeifle-kanotix
* pyfll-installer
* qt-fll-iso2usb-gui
* r5u870
* ralink-fwcutter
* rebuildfstab: rebuildfstab-kanotix, rebuildfstab-sidux, rebuildfstab
* restartx: restartx-kanotix, restartx
* rfswitch
* rootshell
* rootshell-kanotix
* rt61
* rt73-legacy
* sambastart: sambastart-kanotix, sambastart-sidux, sambastart
* saveconfig: saveconfig-kanotix, saveconfig
* scanpartitions: scanpartitions-kanotix, scanpartitions
* seminarix
* seminarix-handbook
* seminarix-latex
* seminarix-notebook-training
* seminarix-samples
* sidux-art-aether: sidux-art-aethir, sidux-art-aether
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
* sidux-art-momos
* sidux-art-moros
* sidux-art-ouranos: sidux-art-uranos, sidux-art-ouranos
* sidux-art-ourea
* sidux-art-pontos
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
* sidux-edu
* sidux-framework
* sidux-graphics: kanotix-graphics, sidux-graphics
* sidux-hermes
* sidux-icons
* sidux-menu: kanotix-menu, sidux-menu
* sidux-searchplugins: kanotix-searchplugins, sidux-searchplugins
* sidux-server-config
* sidux-xdg
* siduxcc: knxcc, siduxcc
* sitar
* smbconf-sidux: smbconf-kanotix, smbconf-sidux
* splashy-theme-kanotix-penguins
* startsyslog: startsyslog-kanotix, startsyslog-sidux, startsyslog
* su-me: kanotix-su, su-me
* sudoers-sidux: sudoers-kanotix, sudores-sidux, sudoers-sidux
* sysv-freeze
* teclasat
* ttf-sidux
* usleep-kanotix
* vdr-gui
* xorgconfig: xf86config-kanotix, xf86config-sidux, xorgconfig-sidux, xorgconfig
* xsession-initscript-sidux: xsession-initscript-kanotix, xsession-initscript-sidux
* xsession-sidux: xsession-kanotix, xsession-sidux

###Zombie
* fonts-ttf-decoratives
* fonts-ttf-west-european
* kanotix-sounds
* kdeadmin
* notes.txt
* server-defaults

##fullstory-doc
* aptosid-manual
* aptosid-manual-prequel
* edu-games-manual

