
export LWRISO_ROOT=/iso/chroot

in-chroot()
{
    chroot ./chroot "$@"
}

chroot-run()
{
    chroot ./chroot "$@"
}

install-pkg()
{
chroot-run apt-get -y --force-yes install $@
}

remove-pkg()
{
chroot-run apt-get -y remove $@
}
