# Installation
First of all, you could install a display manager, but, if you know what is a display manager, and you don't want it, you can install:
```bash
sudo apt-get install xorg-xinit
```
The configuration for xinit is included in .config files so it will be added automatically.
Now, let's go, first, you would need some dependencies.
```bash
alacritty i3 fish feh rofi git lxpolkit picom
```

Now change your shell to /bin/fish:
```bash
chsh
/bin/fish
```

For copying my config, you should do:
```bash
mkdir Documents
mkdir .config
cd Documents
git clone https://github.com/pzeadrian/debianfiles
cd debianfiles
sh debian-configure.sh
```

## So close...
Now, you will have to install some dependecies required by specific apps:
```bash
sudo pacman -S bat exa xsel network-manager-gnome xfce4-power-manager brightnessctl
```

That's it.. Reboot
