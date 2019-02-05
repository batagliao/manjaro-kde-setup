# configure Kwin
kwriteconfig5 --file /home/$USER/.config/kwinrc --group 'Compositing' --key 'AnimationSpeed' 2
kwriteconfig5 --file /home/$USER/.config/kwinrc --group 'Compositing' --key 'Backend' 'OpenGL'
kwriteconfig5 --file /home/$USER/.config/kwinrc --group 'Compositing' --key 'Enabled' --type bool true
kwriteconfig5 --file /home/$USER/.config/kwinrc --group 'Compositing' --key 'GLCore' --type bool false
kwriteconfig5 --file /home/$USER/.config/kwinrc --group 'Compositing' --key 'GLPreferBufferSwap' 'a'
kwriteconfig5 --file /home/$USER/.config/kwinrc --group 'Compositing' --key 'GLTextureFilter' 1
kwriteconfig5 --file /home/$USER/.config/kwinrc --group 'Compositing' --key 'HiddenPreviews' 5
kwriteconfig5 --file /home/$USER/.config/kwinrc --group 'Compositing' --key 'WindowsBlockCompositing' --type bool true
kwriteconfig5 --file /home/$USER/.config/kwinrc --group 'Compositing' --key 'XRenderSmoothScale' --type bool true

kwriteconfig5 --file /home/$USER/.config/kwinrc --group 'Desktops' --key 'Number' 2
kwriteconfig5 --file /home/$USER/.config/kwinrc --group 'Desktops' --key 'Rows' 2

kwriteconfig5 --file /home/$USER/.config/kwinrc --group 'Plugins' --key 'highlightwindowEnabled' --type bool true
kwriteconfig5 --file /home/$USER/.config/kwinrc --group 'Plugins' --key 'minimizeallEnabled' --type bool true
kwriteconfig5 --file /home/$USER/.config/kwinrc --group 'Plugins' --key 'slideEnabled' --type bool true

kwriteconfig5 --file /home/$USER/.config/kwinrc --group 'org.kde.kdecoration2' --key 'BorderSize' 'Normal'
kwriteconfig5 --file /home/$USER/.config/kwinrc --group 'org.kde.kdecoration2' --key 'ButtonsOnLeft' 'MS'
kwriteconfig5 --file /home/$USER/.config/kwinrc --group 'org.kde.kdecoration2' --key 'ButtonsOnRight' 'IAX'
kwriteconfig5 --file /home/$USER/.config/kwinrc --group 'org.kde.kdecoration2' --key 'library' 'org.kde.kwin.aurorae'
kwriteconfig5 --file /home/$USER/.config/kwinrc --group 'org.kde.kdecoration2' --key 'theme' '__aurorae__svg__Arc-Dark'