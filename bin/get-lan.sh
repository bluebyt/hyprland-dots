#!/bin/bash

# hyprctl switchxkblayout logitech-craft next

# get-lang
# if we switch all of them, then getting any of them (the first) works.
hyprctl devices -j |
  jq -r '.keyboards[] | .active_keymap' |
  head -n1 |
  cut -c1-2 |
  tr 'a-z' 'A-Z'



  hyprctl devices -j | gojq -r '.keyboards[] | select(.name == "at-translated-set-2-keyboard") | .active_keymap' | cut -c 1-2 | tr 'A-Z' 'a-z'
