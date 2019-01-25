
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
