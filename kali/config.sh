
# Install all the tools
sudo apt-get install kali-linux-everything

# Set german keyboard, timezone and format
setxkbmap -layout de
sudo timedatectl set-timezone Europe/Berlin
sudo timedatectl set-ntp on
localectl set-locale LC_TIME=en_GB.utf8

# unzip rockyou
sudo gunzip /usr/share/wordlists/rockyou.txt.gz

# Initialize the Metasploit
#sudo update-rc.d postgresql enable
sudo msfdb init
msfconsole -qx "db_status; exit"
