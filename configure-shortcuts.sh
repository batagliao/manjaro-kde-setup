# configure KDE shortcuts
sed -i -e 's|run command=Alt+Space\\tAlt+F2\\t,Alt+Space,Run Command|run command=Meta+Alt+Space\\tAlt+F2\\tSearch,Alt+Space,Run Command|g'  ~/.config/kglobalshortcutsrc
sed -i -e 's|Lock Session=Ctrl+Alt+L\\tScreensaver,Ctrl+Alt+L\\tScreensaver,Lock Session|Lock Session=Meta+L,Ctrl+Alt+L\\tScreensaver,Lock Session|g'  ~/.config/kglobalshortcutsrc
