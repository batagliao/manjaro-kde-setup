cat > ~/.config/plama-org.kde.plasma.desktop-appletrc << 'EOF_PLASMA_APPLET_RC'

[ActionPlugins][0]
MidButton;NoModifier=org.kde.paste
RightButton;NoModifier=org.kde.contextmenu
wheel:Vertical;NoModifier=org.kde.switchdesktop

[ActionPlugins][1]
MidButton;NoModifier=org.kde.paste
RightButton;NoModifier=org.kde.contextmenu

[AppletGlobals][org.kde.plasma.notifications]
popupPosition=3

[Containments][1]
activityId=
formfactor=2
immutability=1
lastScreen=0
location=3
plugin=org.kde.panel
wallpaperplugin=org.kde.image

[Containments][1][Applets][102]
immutability=1
plugin=org.communia.apptitle

[Containments][1][Applets][102][Configuration]
PreloadWeight=0

[Containments][1][Applets][102][Configuration][ConfigDialog]
DialogHeight=480
DialogWidth=640

[Containments][1][Applets][102][Configuration][General]
bold=true
noWindowType=desktopName
textType=1

[Containments][1][Applets][103]
immutability=1
plugin=org.kde.plasma.appmenu

[Containments][1][Applets][103][Configuration]
PreloadWeight=0

[Containments][1][Applets][104]
immutability=1
plugin=org.kde.plasma.panelspacer

[Containments][1][Applets][104][Configuration]
PreloadWeight=0

[Containments][1][Applets][104][Configuration][General]
length=923

[Containments][1][Applets][107]
immutability=1
plugin=org.kde.plasma.eventcalendar

[Containments][1][Applets][107][Configuration]
PreloadWeight=78

[Containments][1][Applets][107][Configuration][General]
widget_show_timer=false

[Containments][1][Applets][107][Configuration][Google Calendar]
access_token=ya29.GlycBhBUTSXJIdxknRRV0S_2_CsCsftezqI8lwdjslxRYexXNHLofvxyBOYuLFrVXvskqIMp8KD9n-z436oqlHizJrNhWxLjADABkzT7JD0fKeYrAEl2Mhz6m5OWDQ
access_token_expires_at=2229900186
access_token_type=Bearer
calendar_id_list=en.brazilian#holiday@group.v.calendar.google.com,lucas.batagliao@luizalabs.com
calendar_list=W3sia2luZCI6ImNhbGVuZGFyI2NhbGVuZGFyTGlzdEVudHJ5IiwiZXRhZyI6IlwiMTU0MDgzMjcyNzc1NTAwMFwiIiwiaWQiOiJsdWNhcy5iYXRhZ2xpYW9AbHVpemFsYWJzLmNvbSIsInN1bW1hcnkiOiJsdWNhcy5iYXRhZ2xpYW9AbHVpemFsYWJzLmNvbSIsInRpbWVab25lIjoiQW1lcmljYS9TYW9fUGF1bG8iLCJjb2xvcklkIjoiMTQiLCJiYWNrZ3JvdW5kQ29sb3IiOiIjOWZlMWU3IiwiZm9yZWdyb3VuZENvbG9yIjoiIzAwMDAwMCIsInNlbGVjdGVkIjp0cnVlLCJhY2Nlc3NSb2xlIjoib3duZXIiLCJkZWZhdWx0UmVtaW5kZXJzIjpbeyJtZXRob2QiOiJwb3B1cCIsIm1pbnV0ZXMiOjEwfV0sIm5vdGlmaWNhdGlvblNldHRpbmdzIjp7Im5vdGlmaWNhdGlvbnMiOlt7InR5cGUiOiJldmVudENyZWF0aW9uIiwibWV0aG9kIjoiZW1haWwifSx7InR5cGUiOiJldmVudENoYW5nZSIsIm1ldGhvZCI6ImVtYWlsIn0seyJ0eXBlIjoiZXZlbnRDYW5jZWxsYXRpb24iLCJtZXRob2QiOiJlbWFpbCJ9LHsidHlwZSI6ImV2ZW50UmVzcG9uc2UiLCJtZXRob2QiOiJlbWFpbCJ9XX0sInByaW1hcnkiOnRydWUsImNvbmZlcmVuY2VQcm9wZXJ0aWVzIjp7ImFsbG93ZWRDb25mZXJlbmNlU29sdXRpb25UeXBlcyI6WyJoYW5nb3V0c01lZXQiXX19LHsia2luZCI6ImNhbGVuZGFyI2NhbGVuZGFyTGlzdEVudHJ5IiwiZXRhZyI6IlwiMTU0MDgzMjcyNzc1NTAwMFwiIiwiaWQiOiIjY29udGFjdHNAZ3JvdXAudi5jYWxlbmRhci5nb29nbGUuY29tIiwic3VtbWFyeSI6IkNvbnRhY3RzIiwidGltZVpvbmUiOiJBbWVyaWNhL1Nhb19QYXVsbyIsInN1bW1hcnlPdmVycmlkZSI6IkNvbnRhY3RzIiwiY29sb3JJZCI6IjEzIiwiYmFja2dyb3VuZENvbG9yIjoiIzkyZTFjMCIsImZvcmVncm91bmRDb2xvciI6IiMwMDAwMDAiLCJzZWxlY3RlZCI6dHJ1ZSwiYWNjZXNzUm9sZSI6InJlYWRlciIsImRlZmF1bHRSZW1pbmRlcnMiOltdLCJjb25mZXJlbmNlUHJvcGVydGllcyI6eyJhbGxvd2VkQ29uZmVyZW5jZVNvbHV0aW9uVHlwZXMiOlsiaGFuZ291dHNNZWV0Il19fSx7ImtpbmQiOiJjYWxlbmRhciNjYWxlbmRhckxpc3RFbnRyeSIsImV0YWciOiJcIjE1NDA4MzI3Mjc3NTUwMDBcIiIsImlkIjoiZW4uYnJhemlsaWFuI2hvbGlkYXlAZ3JvdXAudi5jYWxlbmRhci5nb29nbGUuY29tIiwic3VtbWFyeSI6IkhvbGlkYXlzIGluIEJyYXppbCIsInRpbWVab25lIjoiQW1lcmljYS9TYW9fUGF1bG8iLCJzdW1tYXJ5T3ZlcnJpZGUiOiJIb2xpZGF5cyBpbiBCcmF6aWwiLCJjb2xvcklkIjoiOCIsImJhY2tncm91bmRDb2xvciI6IiMxNmE3NjUiLCJmb3JlZ3JvdW5kQ29sb3IiOiIjMDAwMDAwIiwic2VsZWN0ZWQiOnRydWUsImFjY2Vzc1JvbGUiOiJyZWFkZXIiLCJkZWZhdWx0UmVtaW5kZXJzIjpbXSwiY29uZmVyZW5jZVByb3BlcnRpZXMiOnsiYWxsb3dlZENvbmZlcmVuY2VTb2x1dGlvblR5cGVzIjpbImhhbmdvdXRzTWVldCJdfX1d
events_pollinterval=60
refresh_token=1/MDkvH3ra3EjevDJyyVFtiRb30VBTZSdYjnkJMln-48o

[Containments][1][Applets][107][Configuration][Weather]
weather_city_id=3463011

[Containments][1][Applets][2][Configuration][General]
favorites=firefox.desktop,qupzilla.desktop,org.kde.dolphin.desktop,org.kde.konversation.desktop,libreoffice-writer.desktop,cantata.desktop,kde4-digikam.desktop,org.kde.konsole.desktop,octopi.desktop,systemsettings.desktop
favoritesPortedToKAstats=true
systemApplications=systemsettings.desktop,org.kde.kinfocenter.desktop

[Containments][1][Applets][4][Configuration][General]
launchers=file:///usr/share/applications/org.kde.dolphin.desktop?wmClass=dolphin

[Containments][1][Applets][5]
immutability=1
plugin=org.kde.plasma.showdesktop

[Containments][1][Applets][5][Configuration]
PreloadWeight=0

[Containments][1][Applets][5][Configuration][ConfigDialog]
DialogHeight=480
DialogWidth=640

[Containments][1][Applets][5][Shortcuts]
global=Meta+D

[Containments][1][Applets][6]
immutability=1
plugin=org.kde.plasma.trash

[Containments][1][Applets][6][Configuration]
PreloadWeight=0

[Containments][1][Applets][7]
immutability=1
plugin=org.kde.plasma.systemtray

[Containments][1][Applets][7][Configuration]
PreloadWeight=92
SystrayContainmentId=8

[Containments][1][Applets][7][Configuration][Containments][8]
formfactor=2
location=4

[Containments][1][Configuration]
PreloadWeight=0

[Containments][1][General]
AppletOrder=102;103;104;7;6;5;107

[Containments][106]
activityId=50a93cfc-9837-45ee-a0fd-18f87c143e22
formfactor=0
immutability=1
lastScreen=2
location=0
plugin=org.kde.plasma.folder
wallpaperplugin=org.kde.image

[Containments][106][Configuration]
PreloadWeight=0

[Containments][45]
activityId=50a93cfc-9837-45ee-a0fd-18f87c143e22
formfactor=0
immutability=1
lastScreen=1
location=0
plugin=org.kde.plasma.folder
wallpaperplugin=org.kde.image

[Containments][45][Configuration]
PreloadWeight=0

[Containments][45][General]
ToolBoxButtonState=topright

[Containments][46]
activityId=50a93cfc-9837-45ee-a0fd-18f87c143e22
formfactor=0
immutability=1
lastScreen=0
location=0
plugin=org.kde.desktopcontainment
wallpaperplugin=org.kde.image

[Containments][46][Configuration]
PreloadWeight=0

[Containments][46][General]
ToolBoxButtonState=bottomleft
pressToMoveHelp=false
showToolbox=false

[Containments][46][Wallpaper][org.kde.image][General]
FillMode=2

[Containments][66][Applets][67][Configuration][General]
favoritesPortedToKAstats=true

[Containments][66][Applets][83][Configuration][General]
favoritesPortedToKAstats=true

[Containments][8]
activityId=
formfactor=2
immutability=1
lastScreen=0
location=3
plugin=org.kde.plasma.private.systemtray
wallpaperplugin=org.kde.image

[Containments][8][Applets][105]
immutability=1
plugin=org.kde.plasma.mediacontroller

[Containments][8][Applets][105][Configuration]
PreloadWeight=24

[Containments][8][Applets][36]
immutability=1
plugin=org.kde.plasma.keyboardindicator

[Containments][8][Applets][36][Configuration]
PreloadWeight=0

[Containments][8][Applets][37]
immutability=1
plugin=org.kde.kdeconnect

[Containments][8][Applets][37][Configuration]
PreloadWeight=0

[Containments][8][Applets][38]
immutability=1
plugin=org.kde.plasma.devicenotifier

[Containments][8][Applets][38][Configuration]
PreloadWeight=0

[Containments][8][Applets][39]
immutability=1
plugin=org.kde.plasma.notifications

[Containments][8][Applets][39][Configuration]
PreloadWeight=39

[Containments][8][Applets][39][Configuration][ConfigDialog]
DialogHeight=480
DialogWidth=640

[Containments][8][Applets][40]
immutability=1
plugin=org.kde.plasma.volume

[Containments][8][Applets][40][Configuration]
PreloadWeight=64

[Containments][8][Applets][40][Configuration][General]
maximumVolume=150

[Containments][8][Applets][41]
immutability=1
plugin=org.kde.plasma.clipboard

[Containments][8][Applets][41][Configuration]
PreloadWeight=0

[Containments][8][Applets][42]
immutability=1
plugin=org.kde.plasma.battery

[Containments][8][Applets][42][Configuration]
PreloadWeight=0

[Containments][8][Applets][43]
immutability=1
plugin=org.kde.plasma.bluetooth

[Containments][8][Applets][43][Configuration]
PreloadWeight=12

[Containments][8][Applets][44]
immutability=1
plugin=org.kde.plasma.networkmanagement

[Containments][8][Applets][44][Configuration]
PreloadWeight=0

[Containments][8][Configuration]
PreloadWeight=0

[Containments][8][General]
extraItems=org.kde.plasma.clipboard,org.kde.plasma.notifications,org.kde.plasma.battery,org.kde.plasma.keyboardindicator,org.kde.plasma.mediacontroller,org.kde.plasma.devicenotifier,org.kde.plasma.networkmanagement,org.kde.kdeconnect,org.kde.plasma.bluetooth,org.kde.plasma.volume
hiddenItems=Albert
knownItems=org.kde.plasma.clipboard,org.kde.plasma.notifications,org.kde.plasma.battery,org.kde.plasma.keyboardindicator,org.kde.plasma.mediacontroller,org.kde.plasma.devicenotifier,org.kde.plasma.networkmanagement,org.kde.kdeconnect,org.kde.plasma.bluetooth,org.kde.plasma.volume
shownItems=org.kde.plasma.notifications,TelegramDesktop,org.kde.plasma.volume

[Containments][92][General]
extraItems=org.kde.plasma.clipboard,org.kde.plasma.notifications,org.kde.plasma.battery,org.kde.plasma.keyboardindicator,org.kde.plasma.mediacontroller,org.kde.plasma.devicenotifier,org.kde.plasma.networkmanagement,org.kde.kdeconnect,org.kde.plasma.bluetooth,org.kde.plasma.volume
knownItems=org.kde.plasma.clipboard,org.kde.plasma.notifications,org.kde.plasma.battery,org.kde.plasma.keyboardindicator,org.kde.plasma.mediacontroller,org.kde.plasma.devicenotifier,org.kde.plasma.networkmanagement,org.kde.kdeconnect,org.kde.plasma.bluetooth,org.kde.plasma.volume

[General]
immutability=2

[ScreenMapping]
itemsOnDisabledScreens=
EOF_PLASMA_APPLET_RC


cat > ~/.config/plasmarc << 'EOF_PLASMARC'
[OSD]
Enabled=true

[PlasmaToolTips]
Delay=0.7

[Theme]
name=Arc-Dark
EOF_PLASMARC

