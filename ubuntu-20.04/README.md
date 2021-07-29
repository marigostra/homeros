
# Homeros

Homeros is a GNU/Linux distribution for the blind
built on [Emacspeak](http://emacspeak.sourceforge.net/)
It supports the Russian language and uses Ubuntu Linux 20.04.2 as a~base.
Ready ISO images please find at [download.luwrain.org/homeros/](https://download.luwrain.org/homeros/).
This repository contains all necessary scripts which everybody can use to make his/her own build for personal purposes with any  custom changes.

To run the building process please run:

```
sudo ./homeros-iso /mnt/ubuntu
```

Where ```/mnt/ubuntu/``` is a directory with the mounted Ubuntu Linux distribution.
Since the ```homeros-iso``` script  uses its custom chroot environment,
the only tool you need installed in your system is ```unsquashfs```.

The scripts install the following component into the future system for speech processing:

* [voiceman](https://github.com/marigostra/voiceman/)
* [mbrola-suite](https://github.com/marigostra/mbrola-suite/)
* [rhvoice-legacy](https://github.com/marigostra/rhvoice-legacy/)



