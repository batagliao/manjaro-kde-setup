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
echo 'source /usr/share/nvm/init-nvm.sh' >> /home/$USER/.bashrc
echo 'source /usr/share/nvm/init-nvm.sh' >> /home/$USER/.zshrc
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