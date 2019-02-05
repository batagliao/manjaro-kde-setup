# configure screen lock
kwriteconfig5 --file /home/$USER/.config/kscreenlockerrc --group 'Greeter' --key 'Theme' 'org.kde.breezedark.desktop'
kwriteconfig5 --file /home/$USER/.config/kscreenlockerrc --group 'Greeter' --key 'WallpaperPlugin' 'org.kde.potd'