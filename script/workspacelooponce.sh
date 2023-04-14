#!/bin/bash

for i in {1..9}
do
   echo "Valeur de i est : $i"
   # Mettez ici les commandes que vous souhaitez exécuter pour chaque valeur de i
   hyprctl dispatch workspace $i
   sleep 2
done

