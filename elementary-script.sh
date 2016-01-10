# Clear the Terminal
clear

# Zenity
GUI=$(zenity --list --checklist \
	--height 400 \
	--width 800 \
	--title="elementary-script" \
	--text "Pick one or multiple Actions to execute." \
	--column=Picks \
	--column=Actions \
	--column=Description \
	TRUE "Update System" "Updates the package lists, the system packages and Applications."  \
	TRUE "Speed-Up Memory" "Installs preload and enables zRAM." \
	TRUE "Install Support for Archive Formats" "Installs support for archive formats." \
	TRUE "Install Firefox" "Installs Firefox. A free and open-source web browser." \
	TRUE "Install VLC" "Installs VLC. A free and open source cross-platform multimedia player and framework that plays most multimedia files as well as DVDs, Audio CDs, VCDs, and various streaming protocols." \
	TRUE "Install Transmission" "Installs the Transmission BitTorrent client." \
	TRUE "Install Atom" "Installs Atom. A hackable text editor for the 21st Century." \
	TRUE "Install Elementary tweaks" "Add action description later..." \
	TRUE "Install Gnome system monitor" "Add action description later..." \
	TRUE "Install MenuLibre" "Add action description later..." \
	TRUE "Install Gimp" "Add action description later..." \
	TRUE "Install Spotify" "Add action description later..." \
	TRUE "Install Vocal" "Add action description later..." \
	TRUE "Install Java JDK" "Add action description later..." \
	TRUE "Install Android Studio" "Add action description later..." \
	TRUE "Install Git" "Add action description later..."
	TRUE "Install Temperature Menagment" "Add action description later..." \
	TRUE "Install Zeal" "Add action description later..." \
	TRUE "Fix Broken Packages" "Fixes the broken packages." \
	TRUE "Clean-Up Junk" "Removes unnecessary packages and the local repository of retrieved package files." \
	TRUE "Post-install system update" "Update the package list, the system packages and Applications." \
	--separator=', ');

# Update System
if [[ $GUI == *"Update System"* ]]
then
	clear
	echo "Updating system..."
	echo ""
	sudo apt-get -y update
	sudo apt-get -y dist-upgrade
fi

# Speed-Up Memory
if [[ $GUI == *"Speed-Up Memory"* ]]
then
	clear
	echo "Speeding-up Memory..."
	echo ""
	sudo apt-get -y install preload
	sudo apt-get -y install zram-config
fi

# Install Support for Archive Formats
if [[ $GUI == *"Install Support for Archive Formats"* ]]
then
	clear
	echo "Installing Support for Archive Formats"
	echo ""
	sudo apt-get -y install zip unzip p7zip p7zip-rar rar unrar
fi

# Install Firefox
if [[ $GUI == *"Install Firefox"* ]]
then
	clear
	echo "Installing Firefox..."
	echo ""
	sudo apt-get -y install firefox
	sudo apt-get -y install ttf-lyx
fi

# Install VLC
if [[ $GUI == *"Install VLC"* ]]
then
	clear
	echo "Installing VLC..."
	echo ""
	sudo apt-add-repository -y ppa:videolan/stable-daily
	sudo apt-get -y update
	sudo apt-get -y install vlc
fi

# Install Transmission
if [[ $GUI == *"Install Transmission"* ]]
then
	clear
	echo "Installing Transmission..."
	echo ""
	sudo add-apt-repository ppa:transmissionbt/ppa
	sudo apt-get update
	sudo apt-get install transmission
fi

# Install Atom
if [[ $GUI == *"Install Atom"* ]]
then
	clear
	echo "Installing Atom..."
	echo ""
	sudo add-apt-repository -y ppa:webupd8team/atom
	sudo apt-get -y update
	sudo apt-get -y install atom
fi

# Install Elementary tweaks
if [[ $GUI == *"Install Elementary tweaks"* ]]
then
	clear
	echo "Installing Elementary tweaks..."
	echo ""
	curl -sL  http://i-hate-farms.github.io/spores/install | sudo bash - 
	sudo apt-get -y install elementary-tweaks
fi

# Install Gnome system monitor
if [[ $GUI == *"Install Gnome system monitor"* ]]
then
	clear
	echo "Installing Gnome system monitor..."
	echo ""
	sudo add-apt-repository -y ppa:gnome3-team/gnome3
	sudo apt-get -y update
	sudo apt-get -y install gnome-system-monitor
	sudo add-apt-repository -y --remove ppa:whatever/ppa
	sudo apt-get -y update
fi

# Install MenuLibre
if [[ $GUI == *"Install MenuLibre"* ]]
then
	clear
	echo "Installing MenuLibre..."
	echo ""
	sudo add-apt-repository -y ppa:menulibre-dev/devel
	sudo apt-get -y update
	sudo apt-get -y install menulibre
fi

# Install Gimp
if [[ $GUI == *"Install Gimp"* ]]
then
	clear
	echo "Installing Gimp..."
	echo ""
	sudo add-apt-repository -y ppa:otto-kesselgulasch/gimp
	sudo apt-get -y update
	sudo apt-get -y install gimp
fi

# Install Spotify
if [[ $GUI == *"Install Spotify"* ]]
then
	clear
	echo "Installing Spotify - input will we required"
	echo ""
	sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2C19886
	echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
	sudo apt-get -y update
	sudo apt-get -y install spotify-client
fi

# Install Vocal
if [[ $GUI == *"Install Vocal"* ]]
then
	clear
	echo "Installing Vocal..."
	echo ""
	sudo add-apt-repository -y ppa:nathandyer/vocal-daily
	sudo apt-get -y update
	sudo apt-get -y install vocal
fi

# Install Java JDK
if [[ $GUI == *"Install Java JDK"* ]]
then
	clear
	echo "Installing Java JDK..."
	echo ""
	sudo add-apt-repository ppa:webupd8team/java
	sudo apt-get update
	sudo apt-get install oracle-java8-installer
fi

# Install Android Studio
if [[ $GUI == *"Install Android Studio"* ]]
then
	clear
	echo "Installing Android Studio..."
	echo ""
	sudo add-apt-repository ppa:paolorotolo/android-studio
	sudo apt-get update
	sudo apt-get install android-studio
	sudo apt-get install lib32z1 lib32ncurses5 lib32bz2-1.0 lib32stdc++6
fi

# Install Git
if [[ $GUI == *"Install Git"* ]]
then
	clear
	echo "Installing Git..."
	echo ""
	sudo apt-get install git-all
fi

# Install Temperature Menagment
if [[ $GUI == *"Install Temperature Menagment"* ]]
then
	clear
	echo "Installing Temperature Menagment..."
	echo ""
	sudo add-apt-repository ppa:linrunner/tlp
	sudo apt-get update
	sudo apt-get install tlp tlp-rdw
	sudo tlp start
fi

# Install Zeal
if [[ $GUI == *"Install Zeal"* ]]
then
	clear
	echo "Zeal..."
	echo ""
	sudo add-apt-repository ppa:zeal-developers/ppa
	sudo apt-get update
	sudo apt-get install zeal
fi

# Fix Broken Packages
if [[ $GUI == *"Fix Broken Packages"* ]]
then
	clear
	echo "Fixing the broken packages..."
	echo ""
	sudo apt-get -y -f install
fi

# Clean-Up Junk
if [[ $GUI == *"Clean-Up Junk"* ]]
then
	clear
	echo "Cleaning-up junk..."
	echo ""
	sudo apt-get -y autoremove
	sudo apt-get -y autoclean
fi

# Post-install system update
if [[ $GUI == *"Post-install system update"* ]]
then
	clear
	echo "Post-install system update..."
	echo ""
	sudo apt-get -y update
	sudo apt-get -y upgrade
fi


# Notification
clear
notify-send -i utilities-terminal elementary-script "All tasks ran successfully!"
