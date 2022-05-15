## Install Deps
```
# Update the system (probably not needed but idc)
sudo pacman -Syu

# Install some deps and other things
sudo pacman -S imagemagick util-linux scrot i3lock terminator zsh 

# Install something to make i3lock better
git clone https://github.com/meskarune/i3lock-fancy.git
cd i3lock-fancy
sudo make install

# Install something to make i3lock-fancy better
git clone https://github.com/guimeira/i3lock-fancy-multimonitor.git
cp -r i3lock-fancy-multimonitor $HOME/.i3
chmod +x $HOME/.i3/i3lock-fancy-multimonitor/lock

# echo "bindsym \$mod+p exec $HOME/.i3/i3lock-fancy-multimonitor/lock" >> $HOME/.i3/config

# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```