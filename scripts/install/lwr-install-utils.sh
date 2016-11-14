# Copyright 2015 Roman Volovodov <gr.rPman@gmail.com>
# Copyright 2012-2015 Michael Pozhidaev <michael.pozhidaev@gmail.com>

function print-help()
{
cat <<EOF
lwr-install: LUWRAIN installer

Usage:
  lwr-install [--help] [--root DEVICE] [--boot DEVICE]

Options:
  --boot DEVICE - where you want the GRUB loader to be installed
  --root DEVICE - what partition must be used for the root filesystem (be careful, will be formatted)
EOF
}

function msg() 
{
    echo $@ >> $LOG
    echo $@ 
}
