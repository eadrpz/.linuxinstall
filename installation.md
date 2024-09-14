Ok, let's go, first of all, install Debian, just selecting Standard Minimal

> [!NOTE]
> There's a script in scripts/ folder than can automate almost all this process, 
> just install git and run ./first.install

Log in as root
If you don't have ethernet, let's connect to a network...
```sh
systemctl enable wpa_supplicant
systemctl start wpa_supplicant
```

Then, run
```sh
wpa_cli
```

For adding a home network
```sh
add_network
> 0
set_network 0 ssid "YourSSID"
> OK
set_network 0 psk "YourPASSWORD"
> OK
set_network 0 key_mgmt WPA-PSK
> OK
enable_network 0
> OK
```

And for adding an enterprise network
```sh
add_network
> 0
set_network 0 ssid "NAME"
> OK
set_network 0 identity "myname@example.com"
> OK
set_network 0 password "password"
> OK
set_network 0 key_mgmt WPA-EAP
> OK
enable_netwrok 0
> OK
```

Nice, you are connected to internet, check for updates.
```sh
apt update & apt upgrade
```

Install sudo and add your user to sudo group
```sh
apt install sudo
usermod -aG sudo,video,audio,input "YourUSERNAME"
```

Now install Network Manager and disable wpa_supplicant
```sh
apt install network-manager
systemctl enable NetworkManager
systemctl disable wpa_supplicant
```

Reboot and that's it
```sh
reboot
```

Log in as root
