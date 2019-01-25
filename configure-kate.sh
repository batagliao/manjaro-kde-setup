# configure Kate
killall kate
kwriteconfig5 --file ~/.config/katerc --group 'KTextEditor Renderer' --key Schema 'KDE'
kwriteconfig5 --file ~/.config/katerc --group filetree --key editShade '68,85,106'
kwriteconfig5 --file ~/.config/katerc --group filetree --key viewShade '72,62,83'