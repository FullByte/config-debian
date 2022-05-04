sudo apt update && sudo apt -y upgrade

# Install Navi
sudo apt -y install cargo ftf
cargo install --locked navi

# Config bash
bashrc=~/.bashrc
if [ -f "$bashrc" ];
then
    echo '\n### NAVI ###' >> ~/.bashrc
    echo 'alias navi="~/.cargo/bin/navi"' >> ~/.bashrc
    echo 'eval "\$(navi widget bash)"' >> ~/.bashrc
else
	echo "$bashrc file does not exist. Skipped."
fi

# Config zsh
zshrc=~/.zshrc
if [ -f "$zshrc" ];
then
    echo '\n### NAVI ###' >> ~/.zshrc
    echo 'alias navi="~/.cargo/bin/navi"' >> ~/.zshrc
    echo 'eval "\$(navi widget zsh)"' >> ~/.zshrc
else
	echo "$zshrc file does not exist. Skipped."
fi

# Install own cheatsheet and update on each boot
git clone "https://github.com/FullByte/navi-cheatsheet" "$(navi info cheats-path)/FullByte__navi-cheatsheet"
(crontab -l 2>/dev/null; echo "@reboot sleep 22 && cd \"$(navi info cheats-path)/FullByte__navi-cheatsheet\" && git pull") | crontab -



