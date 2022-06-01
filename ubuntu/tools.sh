sudo apt update && sudo apt -y upgrade

# basic tools
sudo apt install git
sudo apt install calibre
sudo apt install remmina
sudo apt install filezilla
sudo apt install nextcloud-desktop
sudo apt install virtualbox
sudo apt install python3-pip
sudo apt install gnome-tweaks
sudo apt install gnome-shell-extensions
sudo apt install source-highlight

## Joplin
sudo apt install libfuse2
wget -qO- https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash

## Install Nodejs stuff
sudo apt install nodejs
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

## Use pipewire
sudo apt install pipewire-audio-client-libraries libspa-0.2-bluetooth libspa-0.2-jack wireplumber
sudo apt install wireplumber pipewire-media-session-
systemctl --user --now enable wireplumber.service
reboot
sudo apt remove pulseaudio-module-bluetooth
pactl info

## Install Stuff for 0xfab1.net
pip install --upgrade pip
nvm install v14
npm i -g @layer0/cli@latest
pip install mkdocs mkdocs-material mkdocs-minify-plugin

## Install OBS
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install obs-studio

## Install Tailscale
curl -fsSL https://tailscale.com/install.sh | sh
mkdir ~\\github
cd github

## Signal
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee -a /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null
echo 'deb \[arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg\] https://updates.signal.org/desktop/apt xenial main' | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt install signal-desktop

#Docker
sudo apt-get install ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

# Mono
sudo apt install gnupg ca-certificates
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update

# Dotnet Core
wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
sudo apt-get update
sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y dotnet-sdk-6.0

# Powershell and Azure Modules and Azure CLI
sudo snap install powershell --classic
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

powershell -Command "Install-Module -Name Az -Scope CurrentUser -Repository PSGallery -Force"
powershell -Command "Install-Module -Name AzureAD -Scope CurrentUser -Repository PSGallery -Force"

# xrdp
sudo apt update
sudo apt install tasksel
sudo apt install xrdp # start RDP
sudo systemctl status xrdp #verify

# TeamViewer
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo apt install ./teamviewer_amd64.deb
teamviewer
teamviewer --passwd password
teamviewer daemon restart
teamviewer -info
teamviewer license accept

# Node.js
sudo apt update
sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt -y install nodejs
sudo apt -y  install gcc g++ make
node --version
npm --version

# Install Wine
sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
deb https://dl.winehq.org/wine-builds/debian/ buster main
sudo apt update
sudo apt install --install-recommends winehq-stable

# Make Ubuntu Desktop nice
# Get Video Codecs
sudo apt install ubuntu-restricted-extras ubuntu-restricted-addons
# Get Compiz and Docky
sudo apt install gnome-session-flashback compiz compiz-core compiz-plugins compiz-plugins-default compiz-plugins-extra compiz-plugins-main compiz-plugins-main-default compiz-plugins-main-dev compizconfig-settings-manager docky
#Gnome Tweak
sudo apt install gnome-tweaks gnome-tweak-tool
