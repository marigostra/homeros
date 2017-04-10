# Put the actions you want to run on X.org launch

exec &> /tmp/xinitrc.log

export LANG=en_US.UTF-8
export VOICEMAN_EMACSPEAK_RATE_FRACTION=2

setxkbmap -layout "us,ru"
setxkbmap -option "grp:alt_shift_toggle,grp_led:scroll"

exec ~/.dwm/dwm
