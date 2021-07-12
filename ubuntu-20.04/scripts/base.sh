


HMRISO_ARCH=amd64
HMRISO_DATE="$(date +%Y%m%d)"
HMRISO_USER=homeros
HMRISO_NAMESERVER=8.8.8.8
HMRISO_LANG=ru

export HMRISO_ROOT=/iso/chroot

chroot-run()
{
    chroot ./chroot "$@"
}

install-pkg()
{
chroot-run apt-get --yes install $@
}

remove-pkg()
{
chroot-run apt-get --yes remove $@
}

remove-pkg-prefix()
{
    remove-pkg $(apt-cache search "$1" | grep "^$1" | cut -f1 -d' ')
}

