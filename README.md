# Dotfiles

### Install:
```sh
# Multilib is required
sudo pacman -S base-devel
makepkg -si # Or download a release and run `sudo pacman -U gr4p3LCL_dotfiles-(version)-any.pkg.tar.zst`
mkdir -p $HOME/.local/share/fonts
cp JetBrainsMono-Regular.ttf $HOME/.local/share/fonts/
fc-cache -vf
dotfiles-install
install-yay
# To have the changes take effect close the terminal do ALT+SHIFT+R
```
