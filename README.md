android_device_samsung_callisto
===============================

Samsung Galaxy GT-I5510 aka Callisto Tree to build CM 10.x


:::::::::::::::::::::::::::::::::::::::::::: Set the build environment ::::::::::::::::::::::::::::::::::::::::::::::::::


* Configure Your USB 

$ gksudo gedit /etc/udev/rules.d/51-android.rules

In blank file insert :

#Acer
SUBSYSTEM=="usb", ATTR{idVendor}=="0502", MODE="0666"

#ASUS
SUBSYSTEM=="usb", ATTR{idVendor}=="0b05", MODE="0666"

#Dell
SUBSYSTEM=="usb", ATTR{idVendor}=="413c", MODE="0666"

#Foxconn
SUBSYSTEM=="usb", ATTR{idVendor}=="0489", MODE="0666"

#Garmin-Asus
SUBSYSTEM=="usb", ATTR{idVendor}=="091E", MODE="0666"

#Google
SUBSYSTEM=="usb", ATTR{idVendor}=="18d1", MODE="0666"

#HTC
SUBSYSTEM=="usb", ATTR{idVendor}=="0bb4", MODE="0666"

#Huawei
SUBSYSTEM=="usb", ATTR{idVendor}=="12d1", MODE="0666"

#K-Touch
SUBSYSTEM=="usb", ATTR{idVendor}=="24e3", MODE="0666"

#KT Tech
SUBSYSTEM=="usb", ATTR{idVendor}=="2116", MODE="0666"

#Kyocera
SUBSYSTEM=="usb", ATTR{idVendor}=="0482", MODE="0666"

#Lenevo
SUBSYSTEM=="usb", ATTR{idVendor}=="17EF", MODE="0666"

#LG
SUBSYSTEM=="usb", ATTR{idVendor}=="1004", MODE="0666"

#Motorola
SUBSYSTEM=="usb", ATTR{idVendor}=="22b8", MODE="0666"

#NEC
SUBSYSTEM=="usb", ATTR{idVendor}=="0409", MODE="0666"

#Nook
SUBSYSTEM=="usb", ATTR{idVendor}=="2080", MODE="0666"

#Nvidia
SUBSYSTEM=="usb", ATTR{idVendor}=="0955", MODE="0666"

#OTGV
SUBSYSTEM=="usb", ATTR{idVendor}=="2257", MODE="0666"

#Pantech
SUBSYSTEM=="usb", ATTR{idVendor}=="10A9", MODE="0666"

#Philips
SUBSYSTEM=="usb", ATTR{idVendor}=="0471", MODE="0666"

#PMC-Sierra
SUBSYSTEM=="usb", ATTR{idVendor}=="04da", MODE="0666"

#Qualcomm
SUBSYSTEM=="usb", ATTR{idVendor}=="05c6", MODE="0666"

#SK Telesys
SUBSYSTEM=="usb", ATTR{idVendor}=="1f53", MODE="0666"

#Samsung
SUBSYSTEM=="usb", ATTR{idVendor}=="04e8", MODE="0666"

#Sharp
SUBSYSTEM=="usb", ATTR{idVendor}=="04dd", MODE="0666"

#Sony Ericsson
SUBSYSTEM=="usb", ATTR{idVendor}=="0fce", MODE="0666"

#Toshiba
SUBSYSTEM=="usb", ATTR{idVendor}=="0930", MODE="0666"

#ZTE
SUBSYSTEM=="usb", ATTR{idVendor}=="19D2", MODE="0666"

* Save the file and close it and then issue this command :

$ sudo chmod a+r /etc/udev/rules.d/51-android.rules



* Install Repo :

$ mkdir ~/bin

$ PATH=~/bin:$PATH

$ curl https://dl-ssl.google.com/dl/googlesource/git-repo/repo > ~/bin/repo

$ chmod a+x ~/bin/repo

* Initialize the repo, where you want to download repo :

$ mkdir yourchoice

$ cd yourchoice

$ repo init -u git://github.com/androidarmv6/android.git -b cm-10.1

$ repo sync



* Clone this git to - home/yourchoice/device/samsung/callisto

$ git clone git://github.com/ankur850/android_device_samsung_callisto.git -b master

* Place the cm9 to your home directry & cd to "source/device/samsung/callisto/" and issue this command

$ ./extract-files.sh

$ ./makefiles.sh


* Build for your device

$ . build/envsetup.sh && brunch callisto

* Flash your freshly build Zip

$ out/target/samsung/callisto/cm10.1-Unofficial-Callisto.zip


_____________________________________________________________
