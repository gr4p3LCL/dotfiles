#!/bin/bash

# Update the system (probably not needed but idc)
sudo pacman -Syu

# Install some deps and other things
sudo pacman -S imagemagick util-linux scrot i3lock rofi terminator zsh

# Copy configs
cd $HOME/dotfiles/.config/i3
cp config $HOME/.config/i3/
cd $HOME/dotfiles/.config/terminator
mkdir $HOME/.config/terminator/
cp config $HOME/.config/terminator/
mkdir $HOME/.config/rofi
cd $HOME/dotfiles/.config/rofi
cp rofidmenu.rasi $HOME/.config/rofi/
cp arc_dark_colors.rasi $HOME/.config/rofi/
cp arc_dark_transparent_colors.rasi $HOME/.config/rofi/
cp powermenu.rasi $HOME/.config/rofi/

# Install something to make i3lock better
cd $HOME
git clone https://github.com/meskarune/i3lock-fancy.git
cd i3lock-fancy
sudo make install

# Install something to make i3lock-fancy better
cd $HOME
git clone https://github.com/guimeira/i3lock-fancy-multimonitor.git
cp -r i3lock-fancy-multimonitor $HOME/.config/i3
chmod +x $HOME/.config/i3/i3lock-fancy-multimonitor/lock
echo "bindsym \$mod+p exec $HOME/.config/i3/i3lock-fancy-multimonitor/lock" >> $HOME/.config/i3/config

# Install ohmyzsh and theme
cd $HOME
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cd $HOME/dotfiles/.oh-my-zsh/custom/themes/
cp bash.zsh-theme $HOME/.oh-my-zsh/custom/themes/
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="bash"/' $HOME/.zshrc
