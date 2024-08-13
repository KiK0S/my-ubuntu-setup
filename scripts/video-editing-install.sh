#!/bin/bash

# Install ffmpeg
sudo apt-get update -y
sudo apt-get install -y ffmpeg

sudo apt install -y flatpak
sudo apt install -y gnome-software-plugin-flatpak
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo flatpak install -y com.obsproject.Studio

sudo apt update -y
sudo apt install -y desktop-file-utils

# Create a desktop file for OBS Studio
cat << EOF > obs-studio.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=OBS Studio
Comment=Free and open source software for video recording and live streaming
Exec=flatpak run com.obsproject.Studio
Icon=/usr/share/icons/obs-studio.png
Terminal=false
Categories=AudioVideo;Video;
StartupNotify=true
EOF

# Move the desktop file to the applications directory
sudo mv obs-studio.desktop /usr/share/applications/
# Check if the icon is missing
if [ ! -f /usr/share/icons/obs-studio.png ]; then
    # Download the icon
    sudo wget -O /usr/share/icons/obs-studio.png https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Open_Broadcaster_Software_Logo.png/80px-Open_Broadcaster_Software_Logo.png   
fi



# # // postpone until i get a gpu
# # // dependencies for davinci resolve
# sudo apt update -y && sudo apt install -y libapr1 libaprutil1 libxcb-composite0 libxcb-cursor0  libxcb-damage0 libxcb-xinerama0 libxcb-xinput0


# cd ~/Downloads 
# wget https://swr.cloud.blackmagicdesign.com/DaVinciResolve/v19.0b6/DaVinci_Resolve_19.0b6_Linux.zip
# unzip DaVinci_Resolve_19.0b6_Linux.zip
# sudo ./DaVinci_Resolve_19.0b6_Linux.run -i

sudo snap install shotcut --classic