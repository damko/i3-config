#!/bin/bash

me="${0}"
logger "${me} has been launched ..."

# Binding for i3 wm:
# Normally SuperR (keycode 134) and SuperL (keycode 133) are bond to the label "Mod4"
# These commands:
# * remove the bond of SuperR to the label "Mod4"
# * bind SuperR to the label "Mod3".
# In this way I can set only SuperL (Mod4) as chosen i3 modifier and 
# by pressing SuperR i3 won't be triggered.

xmodmap -e 'remove Mod4 = Super_R' &> /dev/null
xmodmap -e 'add Mod3 = Super_R' &> /dev/null

# This remaps CAPS (keycode 66) to ESC
xmodmap -e 'keycode 66 = Escape NoSymbol Escape' 

# This would remap Super_R as ISO_Level3_Shift"
# The remapping works (visible in `xmodmap`) but dead keys are not triggered
# http://superuser.com/questions/138708/xorg-how-can-i-map-altgr-to-the-capslock-key-to-toggle-3rd-level-symbols
# xmodmap -e "keycode 134 = ISO_Level3_Shift"

# This loads Kinesis's custom XKB layout and some additional parameters:
# * caps:none,lv3 -> disables the CAPS button and leaves just Shift for maiusc
# * rwin_switch,grp -> SuperR will load diacritics (if present in layout)
# * alt_space_toggle -> toggles among specified variants (aka different languages)
setxkbmap -model kinesis -layout us,us -variant kinesis_adv_dvorak_it,rus -option "caps:none,lv3:rwin_switch,grp:alt_space_toggle"

# Sets the repeat-rate for keystrokes
xset r rate 700 80
