#!/bin/bash

me="${0}"
logger "${me} has been launched ..."

if [ -f ${HOME}/.vars ]; then
    . ${HOME}/.vars
fi

i3_dir="${HOME}/.config/i3"


# Monitors and Workspaces

# default value
if [ ! ${SCREEN_LAYOUT} ]; then
    SCREEN_LAYOUT="laptop_monitor"
fi

if [ ${SCREEN_LAYOUT} == "laptop_monitor" ]; then
    # Disables VGA and Digital ports
    xrandr --output VGA-1 --off
    xrandr --output DP-1 --off
fi

if [ ${SCREEN_LAYOUT} == "two_monitors_L_shaped" ]; then
    # Turns off laptop monitor and turns on the 2 HP 24"
    # one HP 24" is central 
    # one HP 24" is pivoted on the right of the other HP
    xrandr --output LVDS-1 --off
    xrandr --output DP-1 --left-of VGA-1
    xrandr --output VGA-1 --rotate left --right-of DP-1
fi

if [ ${SCREEN_LAYOUT} == "three_monitors_H_shaped" ]; then
    # This pivots the two side monitors
    xrandr --output LVDS-1 --off
    xrandr --output DP-2 --rotate left --left-of DP-1
    xrandr --output DP-3 --rotate left --right-of DP-1
fi

# cat ${parts_dir}/${SCREEN_LAYOUT} >> ${i3_dir}/config
# ####

# cat ${parts_dir}/floating_windows >> ${i3_dir}/config
# cat ${parts_dir}/scratchpad >> ${i3_dir}/config

# # replacing placeholder BAR_OUTPUT with ${BAR_OUTPUT} content
# cat ${parts_dir}/look.template | sed "s/BAR_OUTPUT/${BAR_OUTPUT}/g" > ${parts_dir}/look
# cat ${parts_dir}/look >> ${i3_dir}/config

# cat ${parts_dir}/apps_startup >> ${i3_dir}/config
