#!/bin/bash

# check if is root
if [ "`id -u`" != "0" ]; then
    echo "Must be run as root"
    exit 1
fi

echo "========================"
echo "=== updating mirrors ==="
echo "========================"
pacman-mirrors -g &&

echo "========================="
echo "=== updating packages ==="
echo "========================="
pacman-mirrors -Syyuu --noconfirm &&

echo "========================="
echo "===== enabling AUR ======"
echo "========================="
pacman -S yay --noconfirm --needed &&
pacman -S trizen --noconfirm --needed &&

echo "Removing Yakuake"
pacman -R Yakuake --noconfirm --needed &&

# from now on, lets intall packages using YAY

call ./installation.sh


echo "=============================="
echo "= optimizing pacman database ="
echo "=============================="
pacman-optimize &&

echo "====================================================================="
echo "================= fixing Java fonts antialiasing ===================="
echo "====================================================================="
cat <<EOF >> /etc/environment
### Java fonts antialiasing settings
_JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true \
  -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel \
  -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
JAVA_FONTS=/usr/share/fonts/TTF
EOF

cat <<EOF >> /etc/bash.bashrc
### Java options
_SILENT_JAVA_OPTIONS="\$_JAVA_OPTIONS"
unset _JAVA_OPTIONS
alias java='java "\$_SILENT_JAVA_OPTIONS"'
EOF

cat <<EOF >> /etc/bash.bashrc
### Java options
_SILENT_JAVA_OPTIONS="\$_JAVA_OPTIONS"
unset _JAVA_OPTIONS
alias java='java "\$_SILENT_JAVA_OPTIONS"'
EOF


## the changes bellow need to be done with the applications closed

call ./configure-albert.sh


# TODO
# Download and install themes
# Download arc theme
# Download +MacOSXe cursors
# Download org.Plasma5V.2.desktop (ksplash theme)


echo "============================="
echo "==== configuring albert ====="
echo "============================="
call ./configure-gtk.sh

call ./configure-notifications.sh

call ./configure-octopi.sh

call ./configure-kate.sh

call ./configure-qt.sh

call ./configure-kde-globals.sh

call ./configure-shortcuts.sh

call ./configure-screenlock.sh

call ./configure-kwin.sh

call ./configure-plasma.sh

call ./configure-startupconfig.sh

call ./configure-profile.sh


kquitapp5 plasmashell &> /dev/null
sleep 3
kstart5 plasmashell &> /dev/null
sleep 3

# force kde to re-read settings
qdbus org.kde.kwin /KWin reconfigure
