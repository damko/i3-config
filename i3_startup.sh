#!/bin/bash

# @damko last-update: 2017-07-06

# This script runs some activities before i3 is loaded
# This script is launched by `/usr/bin/i3-gnome3`

me="${0}"
logger "${me} has been launched ..."

if [ -f ${HOME}/.vars ]; then
	. ${HOME}/.vars
fi

# joins i3 configuration parts in one file (~/.config/i3/config)
${HOME}/.config/i3/scripts/glue_parts.sh

# setup monitors
${HOME}/.config/i3/scripts/setup_monitors.sh

# set Kinesis settings
if [ ${KEYBOARD} == "kinesis" ]; then
	${HOME}/.config/i3/scripts/kinesis.sh
fi
