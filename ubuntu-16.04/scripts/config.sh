
LWRISO_NAMESERVER=192.168.1.1
LWRISO_LANG=ru
HMRISO_USER=homeros

export LWRISO_ROOT=/iso/chroot

in-chroot()
{
    chroot ./chroot "$@"
}
