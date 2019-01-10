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

echo "============================="
echo "===== installing utils ======"
echo "============================="
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

echo "====================================="
echo "===== installing communication ======"
echo "====================================="
# comm
yay -S aur/slack-desktop --noconfirm --needed &&
yay -S aur/telegram-desktop-bin --noconfirm --needed &&
yay -S aur/whatsapp-nativefier --noconfirm --needed &&

echo "============================="
echo "===== installing music ======"
echo "============================="
# music
yay -S aur/spotify --noconfirm --needed &&

echo "============================="
echo "===== installing fonts ======"
echo "============================="
# fonts
yay -S extra/ttf-dejavu --noconfirm --needed &&
yay -S extra/ttf-dejavu-sans-mono-powerline --noconfirm --needed &&
yay -S aur/ttf-mac-fonts --noconfirm --needed &&
yay -S aur/ttf-ms-fonts --noconfirm --needed &&
yay -S community/ttf-opensans --noconfirm --needed &&
yay -S aur/ttf-windows --noconfirm --needed &&
yay -S aur/ttf-yosemite-san-francisco-font-git --noconfirm --needed &&

echo "===================================="
echo "===== installing keyboard fix ======"
echo "===================================="
# needed for proper keyboard
yay -S extra/ibus --noconfirm --needed &&

echo "==============================="
echo "===== installing browser ======"
echo "==============================="
# browser
yay -S aur/vivaldi --noconfirm --needed &&
yay -S aur/vivaldi-codecs-ffmpeg-extra-bin --noconfirm --needed &&

echo "================================="
echo "===== installing dev tools ======"
echo "================================="
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

echo "=============================="
echo "===== installing golang ======"
echo "=============================="
# go
yay -S community/go --noconfirm --needed &&
yay -S community/go-tools --noconfirm --needed &&
yay -S community/godep --noconfirm --needed &&

echo "============================"
echo "===== installing node ======"
echo "============================"
# node
yay -S aur/nvm --noconfirm --needed &&
# put nvm in bash and zsh
echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.bashrc
echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.zshrc
nvm install node && # install latest node

echo "=============================="
echo "===== installing python ======"
echo "=============================="
# python
yay -S aur/pyenv --noconfirm --needed &&
yay -S aur/pyenv-virtualenv --noconfirm --needed &&

echo "======================================"
echo "===== installing libmysqlclient ======"
echo "======================================"
# mysqlclient lib - in the cause it takes too much time to compile
echo "Now we gonna install libmysqlclient57 - it will take sometime"
yay -S aur/libmysqlclient57 --noconfirm --needed &&

echo "================================"
echo "===== installing keyrings ======"
echo "================================"
# keyrings - for password managing of the system
yay -S core/manjaro-keyring --noconfirm --needed &&
yay -S extra/gnome-keyring --noconfirm --needed && # needed for mysqlWorkbench

echo "=================================="
echo "===== installing kde addons ======"
echo "=================================="
# kde
yay -S extra/kdeplasma-addons --noconfirm --needed &&
yay -S aur/plasma5-applets-eventcalendar --noconfirm --needed &&
yay -S aur/plasma5-theme-aex-nomad-git --noconfirm --needed &&
# kvantum
yay -S community/kvantum-manjaro --noconfirm --needed &&

# gnome && gtk compatibility
yay -S extra/gnome-themes-extra --noconfirm --needed &&

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


echo "============================="
echo "==== configuring albert ====="
echo "============================="
# group general
kwriteconfig5 --file ~/.config/albert/albert.conf --group General --key hotkey  Alt+Space &&
kwriteconfig5 --file ~/.config/albert/albert.conf --group General --key incrementalSort --type bool true
kwriteconfig5 --file ~/.config/albert/albert.conf --group General --key showTray --type bool true
kwriteconfig5 --file ~/.config/albert/albert.conf --group General --key telemetry --type bool false
kwriteconfig5 --file ~/.config/albert/albert.conf --group General --key terminal 'konsole -e'
# group org.albert.extension.applications
kwriteconfig5 --file ~/.config/albert/albert.conf --group org.albert.extension.applications --key enabled --type bool true
kwriteconfig5 --file ~/.config/albert/albert.conf --group org.albert.extension.applications --key fuzzy --type bool true
kwriteconfig5 --file ~/.config/albert/albert.conf --group org.albert.extension.applications --key use_generic_name --type bool true
kwriteconfig5 --file ~/.config/albert/albert.conf --group org.albert.extension.applications --key use_keywords --type bool true
kwriteconfig5 --file ~/.config/albert/albert.conf --group org.albert.extension.applications --key use_non_localized_name --type bool true
# group org.albert.extension.calculator
kwriteconfig5 --file ~/.config/albert/albert.conf --group org.albert.extension.calculator --key enabled --type bool true
# group org.albert.extension.externalextensions
kwriteconfig5 --file ~/.config/albert/albert.conf --group org.albert.extension.externalextensions --key enabled --type bool true
# group org.albert.extension.files
kwriteconfig5 --file ~/.config/albert/albert.conf --group org.albert.extension.files --key enabled --type bool true
kwriteconfig5 --file ~/.config/albert/albert.conf --group org.albert.extension.files --key fuzzy --type bool false
# group org.albert.extension.hashgenerator
kwriteconfig5 --file ~/.config/albert/albert.conf --group org.albert.extension.hashgenerator --key enabled --type bool true
# group org.albert.extension.python
kwriteconfig5 --file ~/.config/albert/albert.conf --group org.albert.extension.python --key enabled --type bool true
kwriteconfig5 --file ~/.config/albert/albert.conf --group org.albert.extension.python --key enabled_modules 'pacman, trash, youtube'
# group org.albert.extension.system
kwriteconfig5 --file ~/.config/albert/albert.conf --group org.albert.extension.system --key enabled --type bool true
# group org.albert.extension.terminal
kwriteconfig5 --file ~/.config/albert/albert.conf --group org.albert.extension.terminal --key enabled --type bool true
# group org.albert.extension.websearch
kwriteconfig5 --file ~/.config/albert/albert.conf --group org.albert.extension.websearch --key enabled --type bool true
# group org.albert.frontend.widgetboxmodel
kwriteconfig5 --file ~/.config/albert/albert.conf --group org.albert.frontend.widgetboxmodel --key alwaysOnTop --type bool true
kwriteconfig5 --file ~/.config/albert/albert.conf --group org.albert.frontend.widgetboxmodel --key clearOnHide --type bool false
kwriteconfig5 --file ~/.config/albert/albert.conf --group org.albert.frontend.widgetboxmodel --key displayIcons --type bool true
kwriteconfig5 --file ~/.config/albert/albert.conf --group org.albert.frontend.widgetboxmodel --key displayScrollbar --type bool false
kwriteconfig5 --file ~/.config/albert/albert.conf --group org.albert.frontend.widgetboxmodel --key displayShadow --type bool true
kwriteconfig5 --file ~/.config/albert/albert.conf --group org.albert.frontend.widgetboxmodel --key hideOnClose --type bool true
kwriteconfig5 --file ~/.config/albert/albert.conf --group org.albert.frontend.widgetboxmodel --key hideOnFocusLoss --type bool true
kwriteconfig5 --file ~/.config/albert/albert.conf --group org.albert.frontend.widgetboxmodel --key itemCount 5
kwriteconfig5 --file ~/.config/albert/albert.conf --group org.albert.frontend.widgetboxmodel --key showCentered --type bool true
kwriteconfig5 --file ~/.config/albert/albert.conf --group org.albert.frontend.widgetboxmodel --key showCenthemetered Numix



# TODO
# Download and install themes
# Download arc theme
# Download +MacOSXe cursors


# configure GTK
kwriteconfig5 --file ~/.config/gtk-3.0/settings.ini --group Settings --key gtk-application-prefer-dark-theme --type bool true
kwriteconfig5 --file ~/.config/gtk-3.0/settings.ini --group Settings --key gtk-cursor-theme-name '+MacOSXe'
kwriteconfig5 --file ~/.config/gtk-3.0/settings.ini --group Settings --key gtk-cursor-theme-size 18
kwriteconfig5 --file ~/.config/gtk-3.0/settings.ini --group Settings --key gtk-enable-event-sounds 1
kwriteconfig5 --file ~/.config/gtk-3.0/settings.ini --group Settings --key gtk-enable-input-feedback-sounds 1
kwriteconfig5 --file ~/.config/gtk-3.0/settings.ini --group Settings --key gtk-fallback-icon-theme 'Adwaita'
kwriteconfig5 --file ~/.config/gtk-3.0/settings.ini --group Settings --key gtk-font-name 'Helvetica LT Std Light Regular 10'
kwriteconfig5 --file ~/.config/gtk-3.0/settings.ini --group Settings --key gtk-icon-theme-name 'breeze-dark'
kwriteconfig5 --file ~/.config/gtk-3.0/settings.ini --group Settings --key gtk-modules 'appmenu-gtk-module'
kwriteconfig5 --file ~/.config/gtk-3.0/settings.ini --group Settings --key gtk-primary-button-warps-slider 0
kwriteconfig5 --file ~/.config/gtk-3.0/settings.ini --group Settings --key gtk-shell-shows-menubar 1
kwriteconfig5 --file ~/.config/gtk-3.0/settings.ini --group Settings --key gtk-theme-name 'Arc-Breath-Dark'
kwriteconfig5 --file ~/.config/gtk-3.0/settings.ini --group Settings --key gtk-toolbar-icon-size 'GTK_ICON_SIZE_LARGE_TOOLBAR'
kwriteconfig5 --file ~/.config/gtk-3.0/settings.ini --group Settings --key gtk-xft-antialias 1
kwriteconfig5 --file ~/.config/gtk-3.0/settings.ini --group Settings --key gtk-xft-hinting 1
kwriteconfig5 --file ~/.config/gtk-3.0/settings.ini --group Settings --key gtk-xft-hintstyle 'hintfull'
kwriteconfig5 --file ~/.config/gtk-3.0/settings.ini --group Settings --key gtk-xft-rgba 'rgb'

#configure notifications
kwriteconfig5 --file ~/.config/manjaro/manjaro-settings-manager.conf --group notifications --key checkLanguagePackages --type bool true
kwriteconfig5 --file ~/.config/manjaro/manjaro-settings-manager.conf --group notifications --key checkNewKernel --type bool true
kwriteconfig5 --file ~/.config/manjaro/manjaro-settings-manager.conf --group notifications --key checkNewKernelLts --type bool true
kwriteconfig5 --file ~/.config/manjaro/manjaro-settings-manager.conf --group notifications --key checkNewKernelRecommended --type bool true
kwriteconfig5 --file ~/.config/manjaro/manjaro-settings-manager.conf --group notifications --key checkUnsupportedKernel --type bool false
kwriteconfig5 --file ~/.config/manjaro/manjaro-settings-manager.conf --group notifications --key checkUnsupportedKernelRunning --type bool false


#configure octopi
killall octopi
kwriteconfig5 --file ~/.config/octopi/octopi.conf --group General --key Aur_Tool_Name 'trizen'
kwriteconfig5 --file ~/.config/octopi/octopi.conf --group General --key Backend 'alpm'
kwriteconfig5 --file ~/.config/octopi/octopi.conf --group General --key Instant_Search --type bool true

#configure trolltech.conf - Qt related
sed -i -e 's|KWinPalette\\activeBackground=#eff0f1|KWinPalette\\activeBackground=#2f343f|g'  ~/.config/Trolltech.conf
sed -i -e 's|KWinPalette\\activeBlend=#dadbdb|KWinPalette\\activeBlend=#2f343f|g'  ~/.config/Trolltech.conf
sed -i -e 's|KWinPalette\\activeForeground=#fcfcfc|KWinPalette\\activeForeground=#d3dae3|g'  ~/.config/Trolltech.conf
sed -i -e 's|KWinPalette\\activeTitleBtnBg=#eff0f1|KWinPalette\\activeTitleBtnBg=#2f343f|g'  ~/.config/Trolltech.conf
sed -i -e 's|KWinPalette\\frame=#eff0f1|KWinPalette\\frame=#2f343f|g'  ~/.config/Trolltech.conf
sed -i -e 's|KWinPalette\\inactiveBackground=#eff0f1|KWinPalette\\inactiveBackground=#2f343f|g'  ~/.config/Trolltech.conf
sed -i -e 's|KWinPalette\\inactiveBlend=#dadbdb|KWinPalette\\inactiveBlend=#2f343f|g'  ~/.config/Trolltech.conf
sed -i -e 's|KWinPalette\\inactiveForeground=#777878|KWinPalette\\inactiveForeground=#666a73|g'  ~/.config/Trolltech.conf
sed -i -e 's|KWinPalette\\inactiveFrame=#eff0f1|KWinPalette\\inactiveFrame=#2f343f|g'  ~/.config/Trolltech.conf
sed -i -e 's|KWinPalette\\inactiveTitleBtnBg=#eff0f1|KWinPalette\\inactiveTitleBtnBg=#2f343f|g'  ~/.config/Trolltech.conf
sed -i -e 's|Palette\\active=#232627, #eff0f1, #ffffff, #fafafa, #71757a, #bdc2c6, #232627, #ffffff, #232627, #fcfcfc, #eff0f1, #3a3d3f, #3daee9, #fcfcfc, #2980b9, #7f8c8d, #eff0f1, #000000, #232627, #fcfcfc|Palette\\active=#d3dae3, #414857, #434a5a, #3a404e, #1b1e25, #292d37, #d3dae3, #ffffff, #d3dae3, #404552, #2f343f, #14161a, #5294e2, #d3dae3, #2980b9, #5294e2, #404552, #000000, #353945, #d3dae3|g'  ~/.config/Trolltech.conf
sed -i -e 's|Palette\\disabled=#a0a2a2, #e3e5e7, #ffffff, #eff0f1, #6b7074, #b4babf, #a8a9a9, #ffffff, #a0a2a2, #f1f1f1, #e3e5e7, #3a3d3f, #e3e5e7, #a0a2a2, #a2c8e0, #c7cbcb, #e3e5e7, #000000, #232627, #fcfcfc|Palette\\disabled=#636973, #3e4453, #414858, #383e4b, #1a1d23, #272b35, #6e737f, #ffffff, #6f7582, #3d424e, #2c313c, #131519, #2c313c, #636973, #355570, #435c7e, #3d424e, #000000, #353945, #d3dae3|g'  ~/.config/Trolltech.conf
sed -i -e 's|Palette\\inactive=#232627, #eff0f1, #ffffff, #fafafa, #71757a, #bdc2c6, #232627, #ffffff, #232627, #fcfcfc, #eff0f1, #3a3d3f, #c2e0f5, #232627, #2980b9, #7f8c8d, #eff0f1, #000000, #232627, #fcfcfc|Palette\\inactive=#d3dae3, #414857, #434a5a, #3a404e, #1b1e25, #292d37, #d3dae3, #ffffff, #d3dae3, #404552, #2f343f, #14161a, #2b4768, #d3dae3, #2980b9, #5294e2, #404552, #000000, #353945, #d3dae3|g'  ~/.config/Trolltech.conf
sed -i -e 's|font="Noto Sans,10,-1,5,50,0,0,0,0,0"|font="Helvetica Neue [LINO],10,-1,5,50,0,0,0,0,0,Regular"|g'  ~/.config/Trolltech.conf




# force kde to re-read settings
qdbus org.kde.kwin /KWin reconfigure
