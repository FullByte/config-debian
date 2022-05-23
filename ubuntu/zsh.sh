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