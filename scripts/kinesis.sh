#!/bin/bash

# Binding for i3 wm:
# This binds SuperR with Mod3 instead of Mod4.
# In this way only SuperL is used as i3 modificator
xmodmap -e 'remove Mod4 = Super_R' &> /dev/null
xmodmap -e 'add Mod3 = Super_R' &> /dev/null

# This would remap Super_R as ISO_Level3_Shift"
# The remapping works (visible in `xmodmap`) but dead keys are not triggered
# http://superuser.com/questions/138708/xorg-how-can-i-map-altgr-to-the-capslock-key-to-toggle-3rd-level-symbols
# xmodmap -e "keycode 134 = ISO_Level3_Shift"

# Kinesis keyboard settings
setxkbmap -model kinesis -layout us,us -variant kinesis_adv_dvorak_it,rus -option "caps:none,lv3:rwin_switch,grp:alt_space_toggle"

# Repeat rate for keystrokes
xset r rate 700 80

