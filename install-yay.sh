#!/bin/bash

cd /opt
sudo git clone https://aur.archlinux.org/yay.git
sudo chown -R FAKENAME:users ./yay
cd yay
makepkg -si
