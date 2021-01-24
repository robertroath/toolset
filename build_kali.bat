#docker pull and install
docker pull kalilinux/kali-rolling
docker run -ti kalilinux/kali-rolling /bin/bash

#update the system
sudo apt -y update 
sudo apt -y upgrade
sudo apt -y dist-upgrade

#install needed apps
sudo apt install -y kali-linux-everything
sudo apt install -y flatpak
sudo apt install -y snapd
sudo apt install -y openvas
sudo apt install -y burpsuite
sudo apt install -y xrdp
sudo apt install -y kali-win-kex
sudo apt install -y openssh
sudo apt install -y openssl
sudo apt install -y docker-compose
sudo apt install -y tmux
sudo apt install -y terminator
sudo apt install -y python
sudo apt install -y python3-pip
sudo apt install -y default-jdk
sudo apt install -y git

#install gui
sudo apt install -y kali-linux-xfce
sudo apt install -y xfce4
sudo apt install -y xfce4-goodies

#add python essentials
pip install scapy
pip install soap
pip install SimpleHTTPServer
pip install http.server
pip install twisted
pip install pyOpenSSL
pip install service_identity
pip install pyftpdlib
pip3 install pwntools

# add docker normal user
sudo groupadd docker
sudo gpasswd -a ${USER} docker
sudo service docker restart

#enable auto launch of essential apps
sudo systemctl enable docker
sudo systemctl enable ssh
sudo systemctl enable xrdp

#start the apps
sudo /etc/init.d/docker start
sudo /etc/init.d/ssh start
sudo /etc/init.d/xrdp start


#add zsh fixes
sudo apt install zsh zsh-syntax-highlighting zsh-autosuggestions
cp /etc/skel/.zshrc ~/
chsh -s /bin/zsh

#reboot it
sudo reboot

