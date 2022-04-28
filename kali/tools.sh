
## dnscan: wordlist-based DNS subdomain scanner
sudo apt install python3-dnspython 
sudo git clone https://github.com/rbsec/dnscan /opt/dnscan
sudo pip install -r /opt/dnscan/requirements.txt
sudo ln -s /opt/dnscan/dnscan.py /usr/local/bin/dnscan.py

## reposcanner: scan github repos
sudo apt install python3-git
sudo git clone https://github.com/dionach/reposcanner /opt/reposcanner
ln -s /opt/reposcanner/reposcanner.py /usr/local/bin/reposcanner.py