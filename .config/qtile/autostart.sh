#!/usr/bin/env bash 

festival --tts $HOME/.config/qtile/welcome_msg &
lxsession &
picom -f &
nitrogen --restore &
plank &
dunst &
nm-applet &
volumeicon &
cbatticon &