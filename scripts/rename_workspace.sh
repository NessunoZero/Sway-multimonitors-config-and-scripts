#!/bin/bash

path_scripts=$1

user_input=$(zenity --entry --title "Renaming workspace" --text "Insert new name")

workspace=$(python3 ${path_scripts}/get_ws_num.py)

if [ -n "${user_input}" ]
then
    if [ $user_input == "clear" ]
    then
        swaymsg rename workspace to $workspace
    else
        swaymsg rename workspace to $workspace:$user_input
    fi
fi
