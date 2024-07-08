#!/bin/bash

# Install Blackarch repo and other things
sudo pacman -Syu
sudo pacman -S wget curl imagemagick util-linux scrot i3lock base-devel feh neofetch rofi terminator zsh

# Copy configs
cd /etc/gr4p3LCL_dotfiles/.config/i3
cp config $HOME/.config/i3/
cd /etc/gr4p3LCL_dotfiles/.config/terminator
mkdir $HOME/.config/terminator/
cp config $HOME/.config/terminator/
mkdir $HOME/.config/rofi
cd /etc/gr4p3LCL_dotfiles/.config/rofi
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
echo "bindsym \$mod+p exec $HOME/.config/i3/i3lock-fancy-multimonitor/lock -p" >> $HOME/.config/i3/config

# Set wallpaper with nitrogen
echo "exec feh --bg-scale $HOME/Pictures/knight.png" >> $HOME/.config/i3/config

# Install ohmyzsh and theme
cd $HOME
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cd /etc/gr4p3LCL_dotfiles/.oh-my-zsh/custom/themes/
cp bash.zsh-theme $HOME/.oh-my-zsh/custom/themes/
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="bash"/' $HOME/.zshrc

# Aliases
echo "alias cdl=\"cd && clear\"" >> $HOME/.zshrc
echo "alias cl=\"clear\"" >> $HOME/.zshrc
echo "alias up=\"uptime -p\"" >> $HOME/.zshrc
echo "alias upgrade=\"sudo pacman -Syu\"" >> $HOME/.zshrc
echo "alias wg=\"wget\"" >> $HOME/.zshrc
echo "alias x=\"exit\"" >> $HOME/.zshrc
