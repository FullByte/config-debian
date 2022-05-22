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

