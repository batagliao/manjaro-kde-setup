# configure notifications
kwriteconfig5 --file ~/.config/manjaro/manjaro-settings-manager.conf --group notifications --key checkLanguagePackages --type bool true
kwriteconfig5 --file ~/.config/manjaro/manjaro-settings-manager.conf --group notifications --key checkNewKernel --type bool true
kwriteconfig5 --file ~/.config/manjaro/manjaro-settings-manager.conf --group notifications --key checkNewKernelLts --type bool true
kwriteconfig5 --file ~/.config/manjaro/manjaro-settings-manager.conf --group notifications --key checkNewKernelRecommended --type bool true
kwriteconfig5 --file ~/.config/manjaro/manjaro-settings-manager.conf --group notifications --key checkUnsupportedKernel --type bool false
kwriteconfig5 --file ~/.config/manjaro/manjaro-settings-manager.conf --group notifications --key checkUnsupportedKernelRunning --type bool false