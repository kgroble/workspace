#!/bin/bash

# Specifying the icon(s) in the script
# This allows us to change its appearance conditionally
icon=" "

player_status=$(playerctl status 2> /dev/null)
if [[ $? -eq 0 ]]; then
    metadata="$(playerctl metadata title) - $(playerctl metadata artist)"
fi

# Foreground color formatting tags are optional
if [[ $player_status = "Playing" ]]; then
    echo "%{F#65737E}$icon %{F#FFFFAF}$metadata"
elif [[ $player_status = "Paused" ]]; then
    echo "%{F#65737E}$icon $metadata"
else
    echo ""
fi
