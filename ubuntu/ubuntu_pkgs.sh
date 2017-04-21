#!/bin/sh

## This is a very simple dumb bulk packages setup script

#Remember to install manually
	# Phpstorm
	# skype
	# teamviewr
	# uTorrent

echo "
_  _ ___  _  _ _  _ ___ _  _    ___  ____ ____ _  _ ____ ____ ____ ____ 
|  | |__] |  | |\ |  |  |  |    |__] |__| |    |_/  |__| | __ |___ [__  
|__| |__] |__| | \|  |  |__|    |    |  | |___ | \_ |  | |__] |___ ___] 
                                                                        \n\n"



echo "\n Updating packages lists"
echo "***********************************************"
sudo apt-get update -y


echo "\n\n* Adding ppa repositories"
echo "**************************************"

sudo add-apt-repository ppa:libreoffice/ppa -y
sudo add-apt-repository ppa:gerardpuig/ppa -y # ubuntu cleaner
sudo add-apt-repository ppa:otto-kesselgulasch/gimp -y
sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
sudo add-apt-repository ppa:fossfreedom/indicator-sysmonitor -y
sudo add-apt-repository ppa:rael-gc/scudcloud -y # slack
sudo add-apt-repository ppa:nilarimogard/webupd8 -y #Pulse Equalizer
udo add-apt-repository ppa:kdenlive/kdenlive-stable -y # Kdenlive video editor


# slack
echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | sudo debconf-set-selections


# update and upgrade all the things
sudo -- sh -c 'apt-get update; apt-get upgrade -y; apt-get dist-upgrade -y; apt-get autoremove -y'



echo "\n\n* Installing packages"
echo "**************************************"

sudo apt-get --assume-yes install libreoffice-gtk2 libreoffice-gnome
sudo apt-get --assume-yes install vim
sudo apt-get --assume-yes install gnome-do
sudo apt-get --assume-yes install virtualbox
sudo apt-get --assume-yes install htop
sudo apt-get --assume-yes install ubuntu-cleaner
sudo apt-get --assume-yes install gimp
sudo apt-get --assume-yes install vlc
sudo apt-get --assume-yes install filezilla
sudo apt-get --assume-yes install gtk-recordmydesktop
sudo apt-get --assume-yes install redshift redshift-gtk
sudo apt-get --assume-yes install terminator
sudo apt-get --assume-yes install sublime-text-installer
sudo apt-get --assume-yes install indicator-sysmonitor
sudo apt-get --assume-yes install synaptic
sudo apt-get --assume-yes install gnome-themes-standard
sudo apt-get --assume-yes install network-manager-openconnect network-manager-openconnect-gnome
sudo apt-get --assume-yes install scudcloud
sudo apt-get --assume-yes install google-chrome-stable
sudo apt-get --assume-yes install nautilus-dropbox
sudo apt-get --assume-yes install whois
sudo apt-get --assume-yes install sshfs
sudo apt-get --assume-yes install pulseaudio-equalizer
sudo apt-get --assume-yes install obs-studio  #open broadcaster soft live streaming
sudo apt-get --assume-yes install kdenlive # video editor


#spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update -y
sudo apt-get --assume-yes install spotify-client




# Apply Adwaita Theme and icons
gsettings set org.gnome.desktop.interface gtk-theme "Adwaita"
gsettings set org.gnome.desktop.interface icon-theme-full 'Adwaita'
gsettings set org.gnome.desktop.wm.preferences theme "Adwaita"

# Apply Mercedes logo wallpaper
wget http://www.hdwallpaper.nu/wp-content/uploads/2015/12/Mercedes_Logo_5.png -P /home/$USER/Pictures/
gsettings set org.gnome.desktop.background picture-uri file:////home/$USER/Pictures/Mercedes_Logo_5.png


# Terminator config
> $HOME/.config/terminator/config
echo "[global_config]
  handle_size = 3
[keybindings]
[layouts]
  [[default]]
    [[[child1]]]
      parent = window0
      type = Terminal
    [[[window0]]]
      parent = \"\"
      type = Window
[plugins]
[profiles]
  [[default]]
    background_darkness = 0.8
    background_image = None
    background_type = transparent
    foreground_color = \"#00ff00\"" >> $HOME/.config/terminator/config



check()
{

 dpkg -s "$1" >/dev/null 2>&1 && {
        echo "[✓]  $1"
    } || {
       echo "[x]  $1 not installed"
    }
}

echo "\n\n* Installed packages verification"
echo "**************************************"

check whois
check sshfs
check vim
check htop
check gnome-do
check virtualbox
check ubuntu-cleaner
check gimp
check vlc
check filezilla
check gtk-recordmydesktop
check redshift
check terminator
check sublime-text-installer
check synaptic
check spotify-client
check scudcloud
check google-chrome-stable
check libreoffice-gnome
check indicator-sysmonitor
check gnome-themes-standard
check scudcloud
check nautilus-dropbox
check pulseaudio-equalizer
check obs-studio
check kdenlive


echo "\n"
