# i3 configuration directory

This is my `~/.config/i3 directory`. 

This configuration is strictly coupled with this [my other project](https://github.com/damko/i3-gnome3) which lets me run i3 with gnome3 session. Therefore if you plan to use i3 without gnome3 session you will have to adjust the scripts. 

## What's interesting here

I switch monitor layout quite often: I move from one to two or three monitors and I was tired of having several scattered scripts running in order to adjusts the configuration for each configuration.
Then, finally, I came up with the idea of chunking the i3 config file in parts and to join them every time i3 is loaded selecting which part should be included accordingly to environmental variable called SCREEN_LAYOUT

It works pretty well so far: I can rotate monitor and load my keyboard configuration by just setting a couple of variables in my ~/.vars file

## Installation

If you don't have i3 installed already:

	apt-get install i3 i3-wm i3blocks i3lock i3status

Then follow the installation instructions from this [other repo](https://github.com/damko/i3-gnome3)

Then pull this repo in your $HOME folder

	cd ~/.config
	git clone git@github.com:damko/i3-config.git i3

	# Adjust i3 config_parts accordingly to your monitor layout

	# Open and adjust [i3_startup-sh](https://github.com/damko/i3-config/blob/master/i3_startup.sh)

	# Create your vars file
	touch ~/.vars
	echo 'SCREEN_LAYOUT="three_monitors_H_shaped"' >> ~/.vars
	echo 'KEYBOARD="kinesis"' >> ~/.vars
	
	# Restart X
	sudo pkill -9 X

You should be good to go
