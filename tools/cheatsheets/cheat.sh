sudo apt update && sudo apt -y upgrade

# Install Cheat.sh
tldr rlwrap xsel
tldr -u
curl https://cht.sh/:cht.sh | sudo tee /usr/local/bin/cht.sh
chmod +x /usr/local/bin/cht.sh

# Config bash
bashrc=~/.bashrc
if [ -f "$bashrc" ];
then
    mkdir ~/.bash.d
    curl https://cheat.sh/:bash_completion > ~/.bash.d/cht.sh
    echo '' >> ~/.bashrc
    echo '### cheat.sh ###' >> ~/.bashrc
    echo '. ~/.bash.d/cht.sh' >> ~/.bashrc
else
	echo "$bashrc file does not exist. Skipped."
fi

# Config zsh
zshrc=~/.zshrc
if [ -f "$zshrc" ];
then
    mkdir ~/.zsh.d
    curl https://cheat.sh/:zsh > ~/.zsh.d/_cht
    echo '' >> ~/.zshrc
    echo '### cheat.sh ###' >> ~/.zshrc
    echo 'fpath=(~/.zsh.d/ $fpath)' >> ~/.zshrc
else
	echo "$zshrc file does not exist. Skipped."
fi