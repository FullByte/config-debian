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

# ZSH terminal
sudo apt-get install build-essential curl file git
sudo apt install zsh
sudo apt install git-core curl fonts-powerline
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo '' >> ~/.zshrc
echo '### Plugins ###' >> ~/.zshrc
echo 'plugins=(python pip)' >> ~/.zshrc
omz update
# use: sudo nano ~/.zshrc to edit e.g. change DISABLE_AUTO_UPDATE="true"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc.

# Oh my Bash
bash -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)"
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
sudo mv PowerlineSymbols.otf /usr/share/fonts/
sudo fc-cache -vf
sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/