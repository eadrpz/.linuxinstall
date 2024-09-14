# Debian
cd $HOME/Documents/debianfiles/
git pull

cd

rm -R $HOME/.config/pipewire/
rm -R $HOME/.config/gtk-3.0/ $HOME/.config/gtk-4.0
rm -R $HOME/.config/mpv/ 
rm -R $HOME/.config/fish/ $HOME/.config/picom/ 
rm -R $HOME/.config/alacritty/ $HOME/.config/i3/ $HOME/.config/rofi/ $HOME/.config/polybar/

rm $HOME/.xinitrc
# rm $HOME/.xprofile


# Global dotfiles, configured even if you didn't specify the PC
cp -R $HOME/Documents/debianfiles/configFiles/global/fish/ $HOME/.config/
cp -R $HOME/Documents/debianfiles/configFiles/global/picom/ $HOME/.config/
cp -R $HOME/Documents/debianfiles/configFiles/global/mpv/ $HOME/.config/
cp -R $HOME/Documents/debianfiles/configFiles/global/i3/ $HOME/.config/
cp -R $HOME/Documents/debianfiles/configFiles/global/polybar/ $HOME/.config/
cp -R $HOME/Documents/debianfiles/configFiles/global/rofi/ $HOME/.config/
cp -R $HOME/Documents/debianfiles/configFiles/global/alacritty/ $HOME/.config/
cp $HOME/Documents/debianfiles/configFiles/global/.xinitrc $HOME/
# cp $HOME/Documents/debianfiles/configFiles/global/.xprofile $HOME/

# Pipewire
cp -R $HOME/Documents/debianfiles/configFiles/global/pipewire/ $HOME/.config/

# GTK Theming options
#
# GTK3
cp -R $HOME/Documents/debianfiles/configFiles/global/gtk-3.0/ $HOME/.config/
#
# GTK4
cp -R $HOME/Documents/debianfiles/configFiles/global/gtk-4.0/ $HOME/.config/

# Fonts
if [ -d "$HOME/.local/share/fonts/Ubuntu" ]; then
    echo "Fonts already installed." 
else
    echo "Error: Fonts not installed... Installing right now..."
    if [ -d "$HOME/.local/share/fonts/" ]; then
        echo "Fonts directory already exists..." 
        cp -R $HOME/Documents/debianfiles/configFiles/global/fonts/* $HOME/.local/share/fonts/
        echo "Fonts Installed succesfully."
    else
        echo "Creating fonts directory.."
        mkdir $HOME/.local/share/fonts
        cp -R $HOME/Documents/debianfiles/configFiles/global/fonts/* $HOME/.local/share/fonts/
        echo "Fonts Installed succesfully."
    fi
fi


