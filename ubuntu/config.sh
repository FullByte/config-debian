# Set german keyboard, timezone and format
setxkbmap -layout de
sudo timedatectl set-timezone Europe/Berlin
sudo timedatectl set-ntp on

## Git
git config --global user.name "0xfab1"
git config --global user.email "f@bi.an"

## Clone projects
git clone git@github.com:FullByte/FullByte.github.io.git
git clone git@github.com:FullByte/cal.git
git clone git@github.com:FullByte/navi-cheatsheet.git
git clone git@github.com:FullByte/scripts.git
git clone git@github.com:FullByte/config-windows.git
git clone git@github.com:FullByte/config-debian.git

# Oh my Bash
bash -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)"
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
sudo mv PowerlineSymbols.otf /usr/share/fonts/
sudo fc-cache -vf
sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/