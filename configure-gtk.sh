# configure GTK
kwriteconfig5 --file /home/$USER/.config/gtk-3.0/settings.ini --group Settings --key gtk-application-prefer-dark-theme --type bool true
kwriteconfig5 --file /home/$USER/.config/gtk-3.0/settings.ini --group Settings --key gtk-cursor-theme-name '+MacOSXe'
kwriteconfig5 --file /home/$USER/.config/gtk-3.0/settings.ini --group Settings --key gtk-cursor-theme-size 18
kwriteconfig5 --file /home/$USER/.config/gtk-3.0/settings.ini --group Settings --key gtk-enable-event-sounds 1
kwriteconfig5 --file /home/$USER/.config/gtk-3.0/settings.ini --group Settings --key gtk-enable-input-feedback-sounds 1
kwriteconfig5 --file /home/$USER/.config/gtk-3.0/settings.ini --group Settings --key gtk-fallback-icon-theme 'Adwaita'
kwriteconfig5 --file /home/$USER/.config/gtk-3.0/settings.ini --group Settings --key gtk-font-name 'Helvetica LT Std Light Regular 10'
kwriteconfig5 --file /home/$USER/.config/gtk-3.0/settings.ini --group Settings --key gtk-icon-theme-name 'breeze-dark'
kwriteconfig5 --file /home/$USER/.config/gtk-3.0/settings.ini --group Settings --key gtk-modules 'appmenu-gtk-module'
kwriteconfig5 --file /home/$USER/.config/gtk-3.0/settings.ini --group Settings --key gtk-primary-button-warps-slider 0
kwriteconfig5 --file /home/$USER/.config/gtk-3.0/settings.ini --group Settings --key gtk-shell-shows-menubar 1
kwriteconfig5 --file /home/$USER/.config/gtk-3.0/settings.ini --group Settings --key gtk-theme-name 'Arc-Breath-Dark'
kwriteconfig5 --file /home/$USER/.config/gtk-3.0/settings.ini --group Settings --key gtk-toolbar-icon-size 'GTK_ICON_SIZE_LARGE_TOOLBAR'
kwriteconfig5 --file /home/$USER/.config/gtk-3.0/settings.ini --group Settings --key gtk-xft-antialias 1
kwriteconfig5 --file /home/$USER/.config/gtk-3.0/settings.ini --group Settings --key gtk-xft-hinting 1
kwriteconfig5 --file /home/$USER/.config/gtk-3.0/settings.ini --group Settings --key gtk-xft-hintstyle 'hintfull'
kwriteconfig5 --file /home/$USER/.config/gtk-3.0/settings.ini --group Settings --key gtk-xft-rgba 'rgb'

cat > /home/$USER/.config/gtkrc << 'EOFGTK'
# created by KDE Plasma, ter jan 8 16:00:56 2019
#
# If you do not want Plasma to override your GTK settings, select
# Colors in the System Settings and disable the checkbox
# "Apply colors to non-Qt applications"
#
#
style "default"
{
  bg[NORMAL] = { 0.184, 0.204, 0.247 }
  bg[SELECTED] = { 0.322, 0.580, 0.886 }
  bg[INSENSITIVE] = { 0.184, 0.204, 0.247 }
  bg[ACTIVE] = { 0.161, 0.176, 0.216 }
  bg[PRELIGHT] = { 0.184, 0.204, 0.247 }

  base[NORMAL] = { 0.251, 0.271, 0.322 }
  base[SELECTED] = { 0.322, 0.580, 0.886 }
  base[INSENSITIVE] = { 0.184, 0.204, 0.247 }
  base[ACTIVE] = { 0.322, 0.580, 0.886 }
  base[PRELIGHT] = { 0.322, 0.580, 0.886 }

  text[NORMAL] = { 0.827, 0.855, 0.890 }
  text[SELECTED] = { 0.827, 0.855, 0.890 }
  text[INSENSITIVE] = { 0.161, 0.176, 0.216 }
  text[ACTIVE] = { 0.827, 0.855, 0.890 }
  text[PRELIGHT] = { 0.827, 0.855, 0.890 }

  fg[NORMAL] = { 0.827, 0.855, 0.890 }
  fg[SELECTED] = { 0.827, 0.855, 0.890 }
  fg[INSENSITIVE] = { 0.161, 0.176, 0.216 }
  fg[ACTIVE] = { 0.827, 0.855, 0.890 }
  fg[PRELIGHT] = { 0.827, 0.855, 0.890 }
}

class "*" style "default"

style "ToolTip"
{
  bg[NORMAL] = { 0.937, 0.937, 0.937 }
  base[NORMAL] = { 1.000, 1.000, 1.000 }
  text[NORMAL] = { 0.000, 0.000, 0.000 }
  fg[NORMAL] = { 0.000, 0.000, 0.000 }
}

widget "gtk-tooltip" style "ToolTip"
widget "gtk-tooltips" style "ToolTip"

style "MenuItem"
{
  bg[PRELIGHT] = { 0.322, 0.580, 0.886 }
  fg[PRELIGHT] = { 0.827, 0.855, 0.890 }
}

class "*MenuItem" style "MenuItem"
EOFGTK

cat > /home/$USER/.config/gtkrc-2.0 << 'EOFGTK20'
# created by KDE Plasma, ter jan 8 16:00:56 2019
#
# If you do not want Plasma to override your GTK settings, select
# Colors in the System Settings and disable the checkbox
# "Apply colors to non-Qt applications"
#
#

gtk-alternative-button-order = 1

style "default"
{
  bg[NORMAL] = { 0.184, 0.204, 0.247 }
  bg[SELECTED] = { 0.322, 0.580, 0.886 }
  bg[INSENSITIVE] = { 0.184, 0.204, 0.247 }
  bg[ACTIVE] = { 0.161, 0.176, 0.216 }
  bg[PRELIGHT] = { 0.184, 0.204, 0.247 }

  base[NORMAL] = { 0.251, 0.271, 0.322 }
  base[SELECTED] = { 0.322, 0.580, 0.886 }
  base[INSENSITIVE] = { 0.184, 0.204, 0.247 }
  base[ACTIVE] = { 0.322, 0.580, 0.886 }
  base[PRELIGHT] = { 0.322, 0.580, 0.886 }

  text[NORMAL] = { 0.827, 0.855, 0.890 }
  text[SELECTED] = { 0.827, 0.855, 0.890 }
  text[INSENSITIVE] = { 0.161, 0.176, 0.216 }
  text[ACTIVE] = { 0.827, 0.855, 0.890 }
  text[PRELIGHT] = { 0.827, 0.855, 0.890 }

  fg[NORMAL] = { 0.827, 0.855, 0.890 }
  fg[SELECTED] = { 0.827, 0.855, 0.890 }
  fg[INSENSITIVE] = { 0.161, 0.176, 0.216 }
  fg[ACTIVE] = { 0.827, 0.855, 0.890 }
  fg[PRELIGHT] = { 0.827, 0.855, 0.890 }
}

class "*" style "default"

style "ToolTip"
{
  bg[NORMAL] = { 0.937, 0.937, 0.937 }
  base[NORMAL] = { 1.000, 1.000, 1.000 }
  text[NORMAL] = { 0.000, 0.000, 0.000 }
  fg[NORMAL] = { 0.000, 0.000, 0.000 }
}

widget "gtk-tooltip" style "ToolTip"
widget "gtk-tooltips" style "ToolTip"

style "MenuItem"
{
  bg[PRELIGHT] = { 0.322, 0.580, 0.886 }
  fg[PRELIGHT] = { 0.827, 0.855, 0.890 }
}

class "*MenuItem" style "MenuItem"
EOFGTK20

cat > /home/$USER/.gtkrc-2.0 << 'EOF_GTKRC20'
# File created by KDE Gtk Config
# Configs for GTK2 programs 

include "/usr/share/themes/Arc-Breath-Dark/gtk-2.0/gtkrc"
style "user-font" 
{
	font_name="Helvetica LT Std Light Regular"
}
widget_class "*" style "user-font"
gtk-font-name="Helvetica LT Std Light Regular 10"
gtk-theme-name="Arc-Breath-Dark"
gtk-icon-theme-name="breeze-dark"
gtk-fallback-icon-theme="Adwaita"
gtk-cursor-theme-name="+MacOSXe"
gtk-toolbar-style=GTK_TOOLBAR_BOTH_HORIZ
gtk-menu-images=1
gtk-button-images=1
gtk-primary-button-warps-slider=0
gtk-modules=appmenu-gtk-module
EOF_GTKRC20