
## 1. Download your ISO:
You can download the standard netinstall ISO from [Debian](https://www.debian.org/download), but you must take into account that if you want to configure it only using wifi, you will probably need a ISO with included non-free firmware, so you could take it from [here](https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/)
   
## 2. Install your ISO
No matter which iso you have chosen, start the installation normally, either graphical or non-graphical, but when you arrive to the Software selection section, be sure that the only marked option is "Standard System Utilities" (unless you need SSH or web server).
When iinstallation had finished, reboot, and be ready...
  
--> If you chose Standard ISO install or you have an ethernet connection, just skip step 3.
## 3. Network Config
Debian does not include NetworkManager by default like Arch. Instead, it uses
wpa_supplicant, which involves a somewhat more complex process.
First, login as root
Now enable and start wpa_supplicant:
```bash
systemctl enable wpa_supplicant
systemctl start wpa_supplicant
```
Then, run
```bash
wpa_cli
```
And, for most Home Networks:
```bash
> add_network
0
> set_network 0 ssid "myhomenetwork"
OK
> set_network 0 psk "mypassword"
OK
> set_network 0 key_mgmt WPA-PSK
OK
> enable_network 0
OK
```
Or, for enterprise networks
```bash
> add_network
0
> set_network 0 ssid "eduroam"
OK
> set_network 0 identity "myname@example.com"
OK
> set_network 0 password "mypassword"
OK
> set_network 0 key_mgmt WPA-EAP
OK
> enable_network 0
OK
```
Nice.. You are connected to internet via Wifi.

## 4. System Config
First of all
```bash
apt update && apt upgrade
```
Now,
```bash
apt install sudo xorg
```
Then, edit /etc/sudoers and be sure to leave sudo group line like that:
```bash
%sudo ALL=(ALL:ALL) ALL
```
After that,
```bash
usermod -aG sudo,video,audio %Your username%
```
Finally,
```bash
apt install network-manager
```
and,
```bash
systemctl enable NetworkManager
systemctl --now disable wpa_supplicant
```
Reboot:
```bash
reboot
```
That's all, you succesfully installed a basic vanilla Debian
