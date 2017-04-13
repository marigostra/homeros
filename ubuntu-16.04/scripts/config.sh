

HMRISO_ARCH="$(uname -m)"
HMRISO_DATE="$(date +%Y%m%d)"
HMRISO_USER=homeros

LWRISO_NAMESERVER=192.168.1.1
LWRISO_LANG=ru

if [ "$HMRISO_ARCH" == x86_64 ]; then
    HMRISO_ARCH=amd64
fi
