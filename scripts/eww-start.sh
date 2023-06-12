#!/bin/bash

EWW=`which eww`
CFG="$HOME/.config/eww"

## Run eww daemon if not running already
if [[ ! `pidof eww` ]]; then
	${EWW} daemon
	sleep 1
fi

## Open widgets 
eww --config "$CFG" open sidebar
