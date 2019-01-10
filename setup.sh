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
#TODO: config octopi to use trizen

# from now on, lets intall packages using YAY

# utils
yay -S albert-lite --noconfirm --needed &&
yay -S exfat-utils --noconfirm --needed &&
yay -S extra/ffmpeg --noconfirm --needed &&
yay -S core/gzip --noconfirm --needed &&
yay -S extra/p7zip --noconfirm --needed &&
yay -S extra/unrar --noconfirm --needed &&
yay -S extra/zip --noconfirm --needed &&
yay -S extra/unzip --noconfirm --needed &&
yay -S extra/htop --noconfirm --needed &&
yay -S community/latte-dock --noconfirm --needed &&
yay -S extra/pulseaudio-bluetooth --noconfirm --needed &&
yay -S aur/s-tui --noconfirm --needed &&

# comm
yay -S aur/slack-desktop --noconfirm --needed &&
yay -S aur/telegram-desktop-bin --noconfirm --needed &&
yay -S aur/whatsapp-nativefier --noconfirm --needed &&

# music
yay -S aur/spotify --noconfirm --needed &&

# fonts
yay -S extra/ttf-dejavu --noconfirm --needed &&
yay -S extra/ttf-dejavu-sans-mono-powerline --noconfirm --needed &&
yay -S aur/ttf-mac-fonts --noconfirm --needed &&
yay -S aur/ttf-ms-fonts --noconfirm --needed &&
yay -S community/ttf-opensans --noconfirm --needed &&
yay -S aur/ttf-windows --noconfirm --needed &&
yay -S aur/ttf-yosemite-san-francisco-font-git --noconfirm --needed &&

# needed for proper keyboard
yay -S extra/ibus --noconfirm --needed &&

# browser
yay -S aur/vivaldi --noconfirm --needed &&
yay -S aur/vivaldi-codecs-ffmpeg-extra-bin --noconfirm --needed &&

# dev tools
yay -S base-devel --noconfirm --needed &&
yay -S aur/dbeaver-ce --noconfirm --needed &&
yay -S community/docker --noconfirm --needed &&
yay -S core/gcc --noconfirm --needed &&
yay -S extra/meld --noconfirm --needed &&
yay -S aur/postman-bin --noconfirm --needed &&
yay -S extra/vim --noconfirm --needed &&
yay -S aur/visual-studio-code-bin --noconfirm --needed &&
yay -S community/mysql-workbench --noconfirm --needed &&

# go
yay -S community/go --noconfirm --needed &&
yay -S community/go-tools --noconfirm --needed &&
yay -S community/godep --noconfirm --needed &&

# node
yay -S aur/nvm --noconfirm --needed &&
# put nvm in bash and zsh
echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.bashrc
echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.zshrc
nvm install node && # install latest node

# python
yay -S aur/pyenv --noconfirm --needed &&
yay -S aur/pyenv-virtualenv --noconfirm --needed &&

# keyrings - for password managing of the system
yay -S core/manjaro-keyring --noconfirm --needed &&
yay -S extra/gnome-keyring --noconfirm --needed && # needed for mysqlWorkbench

# kde
yay -S extra/kdeplasma-addons --noconfirm --needed &&
yay -S aur/plasma5-applets-eventcalendar --noconfirm --needed &&
yay -S aur/plasma5-theme-aex-nomad-git --noconfirm --needed &&
# kvantum
yay -S community/kvantum-manjaro --noconfirm --needed &&

# gnome && gtk compatibility
yay -S extra/gnome-themes-extra --noconfirm --needed &&


# mysqlclient lib - in the cause it takes too much time to compile
echo "Now we gonna install libmysqlclient57 - it will take sometime"
yay -S aur/libmysqlclient57 --noconfirm --needed &&

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
