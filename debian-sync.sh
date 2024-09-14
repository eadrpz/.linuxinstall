cd $HOME/Documents/debianfiles/
git pull

cd

## Pipewire
rm -R $HOME/Documents/debianfiles/configFiles/global/pipewire/
cp -R $HOME/.config/pipewire/ $HOME/Documents/debianfiles/configFiles/global/

## GTK Theming settings
# Remember that libadwaita theming for gnome apps requires an option
#
# GTK 3.0
rm -R $HOME/Documents/debianfiles/configFiles/global/gtk-3.0
cp -R $HOME/.config/gtk-3.0/ $HOME/Documents/debianfiles/configFiles/global/
#
# GTK 4.0
rm -R $HOME/Documents/debianfiles/configFiles/global/gtk-4.0
cp -R $HOME/.config/gtk-4.0/ $HOME/Documents/debianfiles/configFiles/global/

#
## Global Apps
# 
# picom
rm -R $HOME/Documents/debianfiles/configFiles/global/picom/
cp -R $HOME/.config/picom/ $HOME/Documents/debianfiles/configFiles/global/
#
# fish
rm -R $HOME/Documents/debianfiles/configFiles/global/fish/
cp -R $HOME/.config/fish/ $HOME/Documents/debianfiles/configFiles/global/
#
# mpv
rm -R $HOME/Documents/debianfiles/configFiles/global/mpv/
cp -R $HOME/.config/mpv/ $HOME/Documents/debianfiles/configFiles/global/
#
# xinitrc
rm -R $HOME/Documents/debianfiles/configFiles/global/.xinitrc
cp -R $HOME/.xinitrc $HOME/Documents/debianfiles/configFiles/global/
#
# xprofile
# rm -R $HOME/Documents/debianfiles/configFiles/global/.xprofile
# cp -R $HOME/.xprofile $HOME/Documents/debianfiles/configFiles/global/
#
# alacritty
rm -R $HOME/Documents/debianfiles/configFiles/global/alacritty/
cp -R $HOME/.config/alacritty/ $HOME/Documents/debianfiles/configFiles/global/
#
# rofi
rm -R $HOME/Documents/debianfiles/configFiles/global/rofi/
cp -R $HOME/.config/rofi/ $HOME/Documents/debianfiles/configFiles/global/
#
# i3
rm -R $HOME/Documents/debianfiles/configFiles/global/i3/
cp -R $HOME/.config/i3/ $HOME/Documents/debianfiles/configFiles/global/
#
# polybar
rm -R $HOME/Documents/debianfiles/configFiles/global/polybar/
cp -R $HOME/.config/polybar/ $HOME/Documents/debianfiles/configFiles/global/

cd $HOME/Documents/debianfiles/
git add -A
git commit -m "$1"
git push

cd
