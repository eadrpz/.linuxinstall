## Removable Media
For get the computer recognizing USB, Android phones and even NTFS disks, I recommend:
```bash
sudo apt-get install udiskie gvfs jmtpfs curl
```


## Touchpad
If you are using a laptop, I recommend you to do this for have all gestures working correctly.
```bash
sudo apt-get install xserver-xorg-input-libinput
cd /etc/X11/xorg.conf.d
sudo nano 30-touchpad.conf
```

Now put this in the file and save changes:
```bash
Section "Inputclass"
  Identifier "devname"
  Driver "libinput"
  Option "Tapping" "on"
  Option "NaturalScrolling" "false"
EndSection
```


## Audio
For this, I recommend you to use pipewire and pavucontrol, for a graphical GUI
```bash
sudo apt-get install pipewire pipewire-alsa pipewire-jack pipewire-pulse wireplumber pavucontrol
```

## Bluetooth
Three steps to configure bluetooth
- Step 1: Install utilities
- Step 2: Enable Bluetooth service
- Step 3: Pair with Arch Linux


***UTILITIES***
```bash
sudo apt-get install bluetooth bluez blueman bluez-firmware
```

Now, let's check if all is OK.
```bash
lsmod | grep btusb
sudo nano /etc/bluetooth/main.conf
```

And finally, enable bluetooth.
```bash
sudo systemctl start bluetooth.service
sudo systemctl enable bluetooth.service
```

## File Managing
### - GUI
I recommend you to use [pcmanfm](https://wiki.archlinux.org/title/PCManFM) for have a GUI and file-roller for managing compressed files in pcmanfm
```bash
sudo pacman -S thunar thunar-archive-plugin ark
```

### - Terminal
Give a try to [ranger](https://github.com/ranger/ranger)
```bash
sudo apt-get install ranger
```

## Trash
With *thunar* you can open the trash clicking on the left panel, but on the command
line you can use:

```bash
ls ~/.local/share/Trash/files
```

## GTK Theming
For GTK themes, I recommend you to use [lxappearance](https://github.com/lxde/lxappearance)
```bash
sudo apt-get install gtk2-engines-murrine gtk2-engines lxappearance
```

## Qt Theming

GTK themes will not be applied to Qt programs, but you can use
[**Kvantum**](https://archlinux.org/packages/?name=kvantum-qt5) to change the
default theme:

```bash
sudo apt-get install qt5-style-kvantum
```

## Theme
My personal config now uses Gruvbox as default theme for GTK and Qt apps, so...
1. Install [adw-gtk3](https://github.com/lassekongo83/adw-gtk3)
2. Install [Libadwaita-Kvantum](https://github.com/GabePoel/KvLibadwaita)
3. For the icons, personally I like [Tela icon theme](https://github.com/vinceliuice/Tela-icon-theme)

## Video and audio
You should give a try to 
[mpv](https://github.com/mpv-player/mpv)

```bash
sudo papt-get install mpv
```

## Screenshots
Configs for this already exist in my dotfiles, but you have to install some things to make them work:
```bash
sudo apt-get install maim xdotool xclip
```
## Text Editor
Personally, I'm in love with [Neovim](https://neovim.io/), and I have some configs for it, you can check them here:
[pzeadrian's nvim](https://github.com/pzeadrian/configNeovim)

## Network
For managing networks, I use [Network Manager](https://wiki.archlinux.org/title/NetworkManager) with the terminal command nmcli or nm-applet
### Trick - Slow WiFi
```bash
sudo nano /etc/modprobe.d/iwlwifi.conf
```
- Now copy that inside the file:
```bash
options iwlwifi 11n_disable=8
```
Then,
```bash
sudo nano /etc/sysctl.d/40-ipv6.conf
```
And paste that,
```bash
# Disable IPv6
net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.nic0.disable_ipv6 = 1
net.ipv6.conf.nicN.disable_ipv6 = 1
```

## Firefox is slow?
Be sure yo uninstall xdg-desktop-portal...
```
sudo apt-get remove xdg-desktop-portal
```

A final reboot, and it will be done..
