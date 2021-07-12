


HMRISO_ARCH=amd64
HMRISO_DATE="$(date +%Y%m%d)"
HMRISO_USER=homeros
HMRISO_KERNEL=4.15.0-29-generic
LWRISO_NAMESERVER=8.8.8.8
LWRISO_LANG=ru

export HMRISO_ROOT=/iso/chroot

chroot-run()
{
    chroot ./chroot "$@"
}

install-pkg()
{
chroot-run apt-get -y install $@
}

remove-pkg()
{
chroot-run apt-get -y remove $@
}
