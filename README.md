# My i3 configuration

This is my `~/.config/i3` directory. 

This configuration is strictly coupled with this [my other project](https://github.com/damko/gnome3-plus-i3) which lets me run gnome3 with i3 as window manager. 

**If you plan to use i3 without gnome3 then you will have to adjust some scripts**

## What's interesting here

I switch monitor layout quite often: I move from one to two or three monitors and I was tired of having several scattered scripts to run in order to adjusts the configuration for each situation.

Finally, I came up with the idea of chunking the i3 config file in parts and to join them every time i3 is loaded accordingly to situation.

Now I can rotate monitor and load my keyboard configuration by just adjusting a couple of variables in my ~/.vars file

## Installation

Follow the installation instructions from this [other repo](https://github.com/damko/gnome3-plus-i3)

Then pull this repo in your `$HOME` folder

	cd ~/.config
	git clone git@github.com:damko/i3-config.git i3

Adjust i3 config_parts accordingly to your monitor layout

Open and adjust [i3_startup-sh](https://github.com/damko/i3-config/blob/master/i3_startup.sh)

Create your "~/.vars" file (there is an example in this repo)

	touch ~/.vars
	echo 'SCREEN_LAYOUT="three_monitors_H_shaped"' >> ~/.vars
	echo 'KEYBOARD="kinesis"' >> ~/.vars
	
	# Restart X
	sudo pkill -9 X

You should be good to go
