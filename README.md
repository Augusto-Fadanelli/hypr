# Hyprland
### Useful Links:
  * [Hyprland Doc](https://wiki.hyprland.org/Getting-Started/Master-Tutorial/)
  * [Hyprland - ArchWiki](https://wiki.archlinux.org/title/Hyprland)
  * [Kitty Documentation](https://sw.kovidgoyal.net/kitty/)

### Preview
<div align="center">
<img src="https://lh3.googleusercontent.com/drive-viewer/AKGpihYjJ7-1HYM2IwJKrb2GpuLuuvubKaoYgS6A1ethpUA3Fnilgh9pxUYDwO-byiXqGBt501a7S1vkzroRgZsvB3zdNjpr9fRhFuY=w3840-h1660-rw-v1" style="width:92%" />
<img src="https://lh3.googleusercontent.com/drive-viewer/AKGpihY4FVoXhnxpyOj6huFAmas7M0GLRPTkSFy_ocPcVejZLOeGU-keiNDWB-A4r3yb-3eDXkLgDm8s9V2YHucT5-Wzi9sbS0sxmw=w2782-h1390-rw-v1" alt="Imagem 1" style="width:92%">
<img src="https://lh3.googleusercontent.com/drive-viewer/AKGpihaRoXz6QX3EB-r6VGj22Ygz930_D4k0gVESdnVlNZyNhh2YsVf8NsPHtYUTXuJSVyjaV9V9QiWblFk0Xc5P-O1Kxtse1jWWpg=w2880-h1662-rw-v1" alt="Imagem 2" style="width:92%">
<img src="https://lh3.googleusercontent.com/drive-viewer/AKGpihYSrhhcNbulLE7skvsmL_zf-evgX8vpC4TRU5ghc4zNgvR_mIJALigKL9U5H_PoIereMk8wmSRXvRNE71a0wjZDci_MaMnFjA=w3362-h1914-rw-v1" alt="Imagem 3" style="width:80%">
<a href="https://youtu.be/nxlKxQ4VXfA"><img src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExcm1jdzFvYWZveTJjaHNmcDV6djMxbXYzaHhyNnV0cWV3cmd6NXRkaCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/TyoacpYV4ujbcJc6oB/giphy-downsized-large.gif" alt="hypr preview"></a> <p> Click on the gif to see a preview video. </p>
</div>

### How to install
  * Dependencies: `gtk3` `mesa` `systemd` `wayland`
    
  * Packages:
    ````
    $ sudo pacman -S ddcutil git go gtk-layer-shell mako polkit-kde-agent qt5-wayland qt6-wayland wayland-protocols xdg-utils hyprland waybar kitty sddm hyprpaper hyprlock nwg-look qt5ct qt6ct gvfs grim slurp wl-clipboard alsa-utils alsa-firmware pulseaudio pulseaudio-alsa pavucontrol neofetch onefetch lolcat wofi otf-font-awesome ttf-hack ttf-nerd-fonts-symbols-mono ttf-dejavu-nerd deepin-screenshot unzip zsh
    $ yay -S nwg-displays nwg-drawer qt5-styleplugins ttf-material-design-icons-extended
    $ sudo systemctl enable sddm
    ````
    * My favorite GTK themes (Feel free to install others):
      ````
      $ sudo pacman -S arc-gtk-theme papirus-icon-theme
      ````
    * My office and multimedia apps (You can change this, but you may need to change some configs in hyprland.conf):
      ````
      $ sudo pacman -S eog evince firefox gnome-mplayer gparted kate qbittorrent thunar vlc
      $ yay -S spotify
      ````
    * Wi-Fi:
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
    * Tip: Use the hwinfo tool to see your hardware specs. Ex.: `hwinfo --short`

  * Clone this repository:
    ````
    $ git clone https://github.com/Augusto-Fadanelli/hypr.git ~/.config/hypr
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
    $ cp -al kitty/ ~/.config/
    ````

  * zsh
    * Install [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh/wiki):
      ````
      $ sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
      ````
    * Install plugins:
      ````
      $ git clone https://github.com/zsh-users/zsh-history-substring-search.git ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search
      $ git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
      $ git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
      ````
    * Edit `~/.zshrc`
      * Choose the theme you want. I will use `gnzh`:
        ````
        ZSH_THEME="gnzh"
        ````
      * Add plugins:
        ````
        plugins=(git command-not-found zsh-history-substring-search zsh-syntax-highlighting zsh-autosuggestions)
        ````
      * I like to use some custom aliases and functions:
        ````
        # kitty aliases
        alias kimg="kitty +kitten icat"
        alias kdiff="kitty +kitten diff"
        alias kdiffg="git difftool --no-symlinks --dir-diff"

        UPDATE(){
            sudo pacman -Syy
            sudo pacman -Syu
            yay -Syy
            yay -Syu
            flatpak update
            sudo snap refresh
        }
        ````
      * Enable neofetch to be displayed every time you open the terminal. Just calls `neofetch` on `.zshrc`.

  * Integrating kitty diff with git
    * Add the following to `~/.gitconfig`:
      ````
      [diff]
          tool = kitty
          guitool = kitty.gui
      [difftool]
          prompt = false
          trustExitCode = true
      [difftool "kitty"]
          cmd = kitten diff $LOCAL $REMOTE
      [difftool "kitty.gui"]
          cmd = kitten diff $LOCAL $REMOTE
      ````

  * Install [neofetch theme](https://github.com/Chick2D/neofetch-themes):
    ````
    $ cp ~/.config/neofetch/config.conf ~/.config/neofetch/config.conf.bkp
    $ git clone https://github.com/Chick2D/neofetch-themes/
    $ cat neofetch-themes/normal/config2.conf > ~/.config/neofetch/config.conf
    $ rm -rf neofetch-themes
    ````
    * You can set a different ascii distro logo in `~/.config/neofetch/config.conf`. I like `ascii_distro="windows7"`.

### Configure nwg-drawer
  * Copy config file:
    ````
    $ ln -f drawer.css ~/.config/nwg-drawer/drawer.css
    ````

### How to Configure NeoVim (Optional)
  * Plugins Links:
    * [Lazy](https://github.com/folke/lazy.nvim)
    * [Catppuccin](https://github.com/catppuccin/nvim)
    * [Telescope](https://github.com/nvim-telescope/telescope.nvim)
    * [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
    * [Neo-Tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
    * [LuaLine](https://github.com/nvim-lualine/lualine.nvim)
    * [Mason.nvim](https://github.com/williamboman/mason.nvim)
    * [Mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
    * [Nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
    * [Telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim)

  * Install packages:
    ````
    $ sudo pacman -S python-pip python-pynvim nodejs fd npm yarn clang
    ````

  * Copy config files:
    ````
    $ cp -al nvim/ ~/.config/
    ````
