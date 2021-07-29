
# Homeros

Homeros is a GNU/Linux distribution for the blind
built on [Emacspeak](http://emacspeak.sourceforge.net/) and Ubuntu Linux 20.04.2.
It includes Russian text-to-speech utilities and various settings for using by Russian-speaking people.
The ISO images of Homeros please find at [download.luwrain.org/homeros/](https://download.luwrain.org/homeros/).
This repository contains all necessary scripts which everybody can use to make his/her own build for personal purposes with any  custom changes.

## INstallation

The ISO images include the ```homeros-install``` script
to clone the system to your hard drive.
This script must be invoked as follows:

```
sudo homeros-install --root /dev/sda1 --boot /dev/sda
```

There ```/dev/sda1``` the device where you want the system root,
and ```/dev/sda``` is the device where you want to put the GRUB boot loader.
The device for system root will be formatted as ext4,
so please be careful,
all unsaved data on this device will be unrecoverably lost.

## Building 

To run the building process please run:

```
sudo ./homeros-iso /mnt/ubuntu
```

Where ```/mnt/ubuntu/``` is a directory with the mounted Ubuntu Linux distribution.
Since the ```homeros-iso``` script  uses its custom chroot environment,
the only tool you need installed in your system is ```unsquashfs```.

The script installs the following component into the system for speech processing:

* [voiceman](https://github.com/marigostra/voiceman/)
* [mbrola-suite](https://github.com/marigostra/mbrola-suite/)
* [rhvoice-legacy](https://github.com/marigostra/rhvoice-legacy/)



