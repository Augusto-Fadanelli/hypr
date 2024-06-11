# Hyprland

### Useful Links:
  * [Hyprland Doc](https://wiki.hyprland.org/Getting-Started/Master-Tutorial/)
  * [Arch Wiki](https://wiki.archlinux.org/title/Hyprland)

### How to install
  * Dependencies: `ddcutil` `go` `gtk3` `gtk-layer-shell` `mako` `mesa` `polkit-kde-agent` `qt5-wayland` `qt6-wayland` `systemd` `wayland` `wayland-protocols` `xdg-utils`
    
  * Packages:
    ````
    $ sudo pacman -S hyprland waybar kitty sddm hyprpaper nwg-look qt5ct qt6ct thunar gvfs grim slurp wl-clipboard alsa-utils alsa-firmware pulseaudio pulseaudio-alsa pavucontrol neofetch lolcat wofi eog vlc ttf-hack deepin-screenshot unzip
    $ yay -S nwg-displays nwg-drawer qt5-styleplugins
    ````
    * Wifi:
      ````
      $ sudo pacman -S wireless_tools iwd
      $ sudo systemctl disable NetworkManager
      $ sudo systemctl enable dhcpcd
      ````
    * Bluetooth:
      ````
      $ sudo pacman -S pulseaudio-bluetooth
      ````
    * To adjust screen brightness (for laptops):
      ````
      $ sudo pacman -S acpi acpilight
      ````
    * Intel Graphics drivers:
      ````
      $ sudo pacman -S mesa mesa-utils lib32-mesa-utils vulkan-intel libva-intel-driver libva-utils 
      ````
    * AMD GPU drivers:
      ````
      $ sudo pacman -S mesa mesa-utils mesa-vdpau lib32-mesa lib32-mesa-utils lib32-vulkan-radeon lib32-amdvlk lib32-libva-mesa-driver lib32-mesa-vdpau amdvlk vulkan-radeon libva libva-mesa-driver libva-utils
      $ yay -Sy vulkan-amdgpu-pro
      ````
    * Generic video drivers:
      ````
      $ sudo pacman -S mesa mesa-utils libva libva-mesa-driver libva-utils
      ````

  * Clone this repository:
    ````
    $ git clone https://github.com/Augusto-Fadanelli/hypr.git ~/.config/
    $ cd ~/.config/hypr/
    ````

### How to Configure
  * Edit config file `~/.config/hypr/hyprland.conf`

### How to Configure Waybar [THIS SECTION IS STILL IN PROGRESS!]
  * Copy config file:
    ````
    $ cp -r /etc/xdg/waybar/ ~/.config/waybar/
    ````

### Set Themes
  * Add the environment variables:
    ````
    $ sudo sh -c 'echo "export QT_QPA_PLATFORMTHEME=qt5ct" >> /etc/environment'
    $ sudo sh -c 'echo "export QT_AUTO_SCREEN_SCALE_FACTOR=0" >> /etc/environment'
    $ sudo sh -c 'echo "export QT_QPA_PLATFORM=wayland" >> /etc/environment'
    ````

  * Launch nwg-look and customize as you like.

  * Launch qt5ct and qt6ct and set as below:
    * Appearence:
      * Style: The same as in nwg-look (In qt5ct: gtk2)
      * Standard dialogs: Default
      * Palette: Custom
      * Color scheme: The same as in nwg-look
    * Fonts:
      * General: Noto Sans 10
      * Fixed width: Noto Sans 10
    * Icon Theme: The same as in nwg-look

  * It may be necessary to restart for the changes to take effect. 

### How to Configure Kitty Terminal 
  * Copy config file:
    ````
    $ cp /usr/share/doc/kitty/kitty.conf ~/.config/kitty
    ````

### Configure nwg-drawer
  * Copy config file:
    ````
    $ ln -f drawer.css ~/.config/nwg-drawer/drawer.css
    ````
