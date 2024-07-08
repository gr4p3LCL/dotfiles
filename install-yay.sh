#!/bin/bash

cd /opt
sudo git clone https://aur.archlinux.org/yay.git
sudo chown -R $USER:users ./yay
cd yay
makepkg -si
