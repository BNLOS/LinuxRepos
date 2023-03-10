#!/bin/bash

sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key

items=(1 "Jammy"
       2 "Focal")

while choice=$(dialog --title "$TITLE" \
                 --menu "Please select" 10 40 3 "${items[@]}" \
                 2>&1 >/dev/tty)
    do
    case $choice in
        1) ;; # sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
        2) ;; # sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/focal/winehq-focal.sources
        *) ;; # exit
    esac
done
clear # clear after user pressed Cancel
