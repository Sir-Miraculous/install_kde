#!/bin/bash

# Step 1: Update the system
sudo pacman -Syu

# Step 2: Install yay AUR helper
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

# Step 3: Generate yay database
yay -Y --gendb

# Step 4: Update the system and AUR packages, including development packages
yay -Syu --devel

# Step 5: Save the current development packages
yay -Y --devel --save

# Step 6: Install KDE-Plasma and other applications
yay -S bluedevil breeze breeze-gtk breeze-plymouth drkonqi kactivitymanagerd kde-cli-tools kde-gtk-config kdecoration kdeplasma-addons kgamma kglobalaccel kinfocenter kmenuedit kpipewire kscreen kscreenlocker ksystemstats kwayland kwin kwrited layer-shell-qt libkscreen libksysguard libplasma milou ocean-sound-theme oxygen oxygen-sounds ocean-sound-theme plasma-browser-integration plasma-desktop plasma-disks plasma-firewall plasma-integration plasma-nm plasma-pa plasma-sdk plasma-systemmonitor plasma-workspace plasma-workspace-wallpapers plymouth-kcm polkit-kde-agent powerdevil power-profiles-daemon qqc2-breeze-style sddm sddm-kcm systemsettings xdg-desktop-portal-kde ark unrar unzip audiocd-kio colord-kde dolphin dolphin-plugins kate kcharselect kcolorchooser kcron kdegraphics-thumbnailers kdesdk-thumbnailers kdialog kfind kio-admin konsole kontrast okular partitionmanager spectacle firefox vlc gwenview kalk pipewire pipewire-alsa pipewire-pulse pipewire-jack pipewire-zeroconf wireplumber lib32-pipewire lib32-pipewire-jack icoutils xfburn e2fsprogs ntfs-3g exfat-utils  exfatprogs fuse-exfat dosfstools btrfs-progs xfsprogs jfsutils reiserfsprogs f2fs-tools cdrkit cdrtools nfs-utils smbclient cifs-utils xorg-xwayland xwaylandvideobridge fastfetch

# Step 7: Install printer support packages
yay -S cups cups-pdf system-config-printer print-manager

# Step 8: Enable and start CUPS service
sudo systemctl enable cups
sudo systemctl start cups

# Step 9: Enable SDDM display manager
sudo systemctl enable sddm

# Step 10: Install Bluetooth drivers and utilities
sudo pacman -S --needed bluez bluez-utils

# Step 11: Enable and start Bluetooth service
sudo systemctl enable bluetooth
sudo systemctl start bluetooth

# Step 14: Install Sddm config editor
yay -S sddm-conf

echo "KDE-Plasma, applications, printer support, Bluetooth drivers"
