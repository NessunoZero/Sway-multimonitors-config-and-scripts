#!/bin/bash

path_scripts=$1

workspace_name=$(python3 ${path_scripts}/get_ws_name.py)
workspace_zero=$(python3 ${path_scripts}/get_ws_zero.py)

if [ -n "${workspace_zero}" ]
then
    rename=$(python3 ${path_scripts}/check_num.py $2)
    if [ -z "${rename}"]
    then
        if [ -n "${workspace_name}" ]
        then
            swaymsg rename workspace to $2:$workspace_name
        else
            swaymsg rename workspace to $2
        fi
    fi
else
    rename=$(python3 ${path_scripts}/check_num.py 0$2)
    if [ -z "${rename}"]
    then
        if [ -n "${workspace_name}" ]
        then
            swaymsg rename workspace to 0$2:$workspace_name
        else
            swaymsg rename workspace to 0$2
        fi
    fi
fi

if [ -n "${rename}" ]
then
    notify-send yet-existing workspace
else
    swaymsg move workspace to output left
fi
