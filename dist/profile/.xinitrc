# Put the actions you would like to run on X.org start

exec &> /tmp/xinitrc.log
export LANG=en_US.UTF-8
export VOICEMAN_EMACSPEAK_RATE_FRACTION=2

setxkbmap -layout "us,ru"
setxkbmap -option "grp:alt_shift_toggle,grp_led:scroll"
ogg123 -d alsa /opt/homeros.ogg &> /dev/null
exec emacspeak
