# My CachyOS+Hyprland DotFiles

!!! This Is UNDER CONSTRUCTION !!!!

This Directory Contains my dotfiles and Wallpapers

This Guide is Created Assuming You installed CahcyOS with NODesktop and Limine

## Requirements

run the following command to Install neccessary Packages 

```
paru -Syu hyprland waybar stow git kitty neovim firefox 
```

### Some more Packages

```
paru -Syu hyprpaper dunst okular thunar ttf-jetbrain-mono-nerd brightnessctl fd fzf eza yt-dlp hypridle hyprpolkitagent tldr ly tty-clock kew cava vlc zoxide  cliphist udisks2 udisks2-btrfs udiskie polkit-kde-agent qt5-wayland qt6-wayland nwg-look obsidian tumbler dunst gvfs gvfs-mtp pamixer pavucontrol playerctl ffmpegthumbnailer hyprlock hyprland hyprshot neovim thunar-volman rose-pine-hyprcursor xdg-desktop-portal-hyprland   
```

## Run Stow
```
cd ~/DotFiles 
stow --adopt .
```
## Setup ly 
```
sudo systemctl enable ly.service
sudo systemctl disable getty@tty2.service 
```

## Switch Power Profile Automatically
 
https://github.com/basecamp/omarchy/discussions/933

Follow this Guide

## NVIDIA 


Note : the PCIE address are specific to my current laptop , please change them accordingly

```
sudo nvim /etc/udev/rules.d/99-gpu-alias.rules
```

Paste the following

```
# Intel iGPU symlink
KERNEL=="card*", \
KERNELS=="0000:00:02.0", \
SUBSYSTEM=="drm", \
SUBSYSTEMS=="pci", \
SYMLINK+="dri/intel-igpu"

# NVIDIA dGPU symlink
KERNEL=="card*", \
KERNELS=="0000:01:00.0", \
SUBSYSTEM=="drm", \
SUBSYSTEMS=="pci", \
SYMLINK+="dri/nvidia-dgpu"

```
Reload the UDEV rules

```
sudo udevadm control --reload
sudo udevadm trigger

```
The remaining Setup for Hyprland is already done in the hyprland.conf 
