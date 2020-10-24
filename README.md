# Sway-multimonitors-config-and-scripts

## What you find here
Inside config file, there is a part of swaywm configuration that allows to have up to 20 workspaces splitted comfortably beetween two monitors, each one with its keybindings. There are also keybindings to use bash and python3 scripts to do some actions like renaming or moving a workspace among monitors, letting all related keybindings working.

## What do you need

### Requirements
* swaywm
* python3
* i3ipc-python3
* zenity
* swaylock
* swayidle
* notify-send

See 'requirements.txt' for more information.

## Is it ready to use?
You just need to tweak some variables in the 'config' file, to have the configuration working within your environment.

### Depending on your environment you can select:
* laptop
* external

### You can moreover change keybindings:
* mod
* main_key
* external_key
* modifier_key

### And of course you can change scripts location (default '~/scripts') by changing: 

* path_scritps

## Is this stuff tested anywhere?
It has currently been tested on Manjaro linux.