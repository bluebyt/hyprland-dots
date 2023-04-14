#!/bin/bash

while true; do
  for i in {1..9}; do
  echo "Valeur de i est : $i"
    hyprctl dispatch workspace $i
    sleep 5
  done
done
