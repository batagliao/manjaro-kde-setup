# configure octopi
killall octopi
kwriteconfig5 --file /home/$USER/.config/octopi/octopi.conf --group General --key Aur_Tool_Name 'trizen'
kwriteconfig5 --file /home/$USER/.config/octopi/octopi.conf --group General --key Backend 'alpm'
kwriteconfig5 --file /home/$USER/.config/octopi/octopi.conf --group General --key Instant_Search --type bool true