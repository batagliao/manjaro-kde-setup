#!/bin/bash

# check if is root
# if [ "`id -u`" != "0" ]; then
#     echo "Must be run as root"
#     exit 1
# fi

echo "========================"
echo "=== updating mirrors ==="
echo "========================"
sudo pacman-mirrors -g &&

echo "========================="
echo "=== updating packages ==="
echo "========================="
sudo pacman -Syyuu --noconfirm &&

echo "========================="
echo "===== enabling AUR ======"
echo "========================="
sudo pacman -S yay --noconfirm --needed &&
sudo pacman -S trizen --noconfirm --needed &&

echo "Removing Yakuake"
sudo pacman -R yakuake --noconfirm &&
# from now on, lets intall packages using YAY

source ./installation.sh
wait 

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

echo "============================="
echo "==== downloading themes ====="
echo "============================="
source ./download-themes.sh

echo "============================="
echo "==== configuring albert ====="
echo "============================="
source ./configure-albert.sh
wait

echo "=========================="
echo "==== configuring gtk ====="
echo "=========================="
source ./configure-gtk.sh
wait

echo "===================================="
echo "==== configuring notifications ====="
echo "===================================="
source ./configure-notifications.sh
wait

echo "============================="
echo "==== configuring octopi ====="
echo "============================="
source ./configure-octopi.sh
wait

echo "==========================="
echo "==== configuring kate ====="
echo "==========================="
source ./configure-kate.sh
wait

echo "========================="
echo "==== configuring QT ====="
echo "========================="
source ./configure-qt.sh
wait

echo "=================================="
echo "==== configuring KDE globals ====="
echo "=================================="
source ./configure-kde-globals.sh
wait

echo "================================"
echo "==== configuring shortcuts ====="
echo "================================="
source ./configure-shortcuts.sh
wait

echo "================================="
echo "==== configuring screenlock ====="
echo "================================="
source ./configure-screenlock.sh
wait

echo "==========================="
echo "==== configuring kwin ====="
echo "==========================="
source ./configure-kwin.sh
wait

echo "============================="
echo "==== configuring plasma ====="
echo "============================="
source ./configure-plasma.sh
wait

echo "=============================="
echo "==== configuring startup ====="
echo "=============================="
source ./configure-startupconfig.sh
wait

echo "=============================="
echo "==== configuring profile ====="
echo "=============================="
source ./configure-profile.sh
wait

echo "======================="
echo "==== quiting apps ====="
echo "======================="

kquitapp5 plasmashell &> /dev/null
sleep 3
kstart5 plasmashell &> /dev/null
sleep 3

# force kde to re-read settings
qdbus org.kde.kwin /KWin reconfigure


read -p "We need to reboot. Do it now (y/n)? " answer
case ${answer:0:1} in
    y|Y )
        reboot
    ;;
    * )
        echo Ok. Do it yourself
    ;;
esac