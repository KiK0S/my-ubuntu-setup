#/bin/bash

if [ -f '/usr/local/bin/cursor' ]; then
    echo 'Cursor bin already exists'
else
    cd ~/Downloads
    wget https://downloader.cursor.sh/linux/appImage/x64
    chmod +x cursor-*.AppImage
    sudo cp cursor-*.AppImage /usr/local/bin/cursor
    sudo cp /home/kikos/dev/my-setup/templates/cursor.desktop /usr/share/applications
    ./cursor-*.AppImage --appimage-extract
    sudo cp -p squashfs-root/usr/share/icons/hicolor/64x64/apps/cursor.png /usr/share/icons/cursor/hicolor/64x64/apps/
fi



