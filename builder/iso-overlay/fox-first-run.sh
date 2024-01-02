#!/bin/sh

####################################
# customize first run actions here..
#remove user password
sudo passwd -d whoami
#disable screen blank
gsettings set org.gnome.desktop.session idle-delay 0
#diable update notifier
gsettings set com.ubuntu.update-notifier no-show-notifications true
#copy Fox binary from the installation media root to the home dir
cp /media/$USER/fox-os/Fox $HOME
#make binary executable
sudo chmod +x $HOME/Fox
#create config.txt
echo "type=init" > $HOME/config.txt
#execute the Fox binary
./Fox

##############################
# keep this code, clean up...
rm -fr ~/.config/autostart/fox-first-run.desktop
# last line
rm -fr ~/fox-first-run.sh
