cat > ~/.config/startupconfig << 'EOF_STARTTUPCONFIG'

#! /bin/sh
# kcminputrc Mouse cursorTheme 'breeze_cursors'
kcminputrc_mouse_cursortheme=+MacOSXe
# kcminputrc Mouse cursorSize ''
kcminputrc_mouse_cursorsize=32
# ksplashrc KSplash Theme Breeze
ksplashrc_ksplash_theme=org.Plasma5V.2.desktop
# ksplashrc KSplash Engine KSplashQML
ksplashrc_ksplash_engine=KSplashQML
# kdeglobals KScreen ScreenScaleFactors ''
kdeglobals_kscreen_screenscalefactors=''
# kcmfonts General forceFontDPI 0
kcmfonts_general_forcefontdpi=0
EOF_STARTTUPCONFIG

cat > ~/.config/startupconfigfiles << 'EOF_STARTUPCONFIGFILES'
kcminputrc Mouse cursorTheme 'breeze_cursors'
/home/batagliao/.config/kcminputrc
!/etc/xdg/kcminputrc
!/home/batagliao/.local/share/config/kcminputrc
!/home/batagliao/.local/share/flatpak/exports/share/config/kcminputrc
!/var/lib/flatpak/exports/share/config/kcminputrc
!/usr/local/share/config/kcminputrc
!/usr/share/config/kcminputrc
*
kcminputrc Mouse cursorSize ''
/home/batagliao/.config/kcminputrc
!/etc/xdg/kcminputrc
!/home/batagliao/.local/share/config/kcminputrc
!/home/batagliao/.local/share/flatpak/exports/share/config/kcminputrc
!/var/lib/flatpak/exports/share/config/kcminputrc
!/usr/local/share/config/kcminputrc
!/usr/share/config/kcminputrc
*
ksplashrc KSplash Theme Breeze
/home/batagliao/.config/ksplashrc
!/etc/xdg/ksplashrc
!/home/batagliao/.local/share/config/ksplashrc
!/home/batagliao/.local/share/flatpak/exports/share/config/ksplashrc
!/var/lib/flatpak/exports/share/config/ksplashrc
!/usr/local/share/config/ksplashrc
!/usr/share/config/ksplashrc
*
ksplashrc KSplash Engine KSplashQML
/home/batagliao/.config/ksplashrc
!/etc/xdg/ksplashrc
!/home/batagliao/.local/share/config/ksplashrc
!/home/batagliao/.local/share/flatpak/exports/share/config/ksplashrc
!/var/lib/flatpak/exports/share/config/ksplashrc
!/usr/local/share/config/ksplashrc
!/usr/share/config/ksplashrc
*
kdeglobals KScreen ScreenScaleFactors ''
/home/batagliao/.config/kdeglobals
!/etc/xdg/kdeglobals
!/home/batagliao/.local/share/config/kdeglobals
!/home/batagliao/.local/share/flatpak/exports/share/config/kdeglobals
!/var/lib/flatpak/exports/share/config/kdeglobals
!/usr/local/share/config/kdeglobals
!/usr/share/config/kdeglobals
*
kcmfonts General forceFontDPI 0
/home/batagliao/.config/kcmfonts
!/etc/xdg/kcmfonts
!/home/batagliao/.local/share/config/kcmfonts
!/home/batagliao/.local/share/flatpak/exports/share/config/kcmfonts
!/var/lib/flatpak/exports/share/config/kcmfonts
!/usr/local/share/config/kcmfonts
!/usr/share/config/kcmfonts
*
EOF_STARTUPCONFIGFILES