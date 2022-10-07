#!/bin/bash

af=".bash_aliases"

touch ~/$af
#sudo apt install source -y
echo "alias sap='sudo apt -y'" > ~/$af
echo "alias upg='sudo apt update && sudo apt -y upgrade'" >> ~/$af
sudo apt install make clang valgrind -y


# install docker tools
#sudo apt update && sudo apt install apt-transport-https ca-certificates curl gnupg2 software-properties-common
sudo apt update -y && sudo apt install apt-transport-https ca-certificates curl gnupg2 software-properties-common -y

# add docker's repository
#curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
#sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
#sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian stable"

# install docker && docker-compose
sudo apt update && sudo apt upgrade -y && sudo apt install docker.io #docker-ce docker-ce-cli containerd.io -y
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose && sudo chmod +x /usr/bin/docker-compose
# add docker's right for user
sudo usermod -aG docker $USER

# print docker & docker-compose version for confirm success installation
docker --version
docker-compose --version


#install atom
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt update -y
sudo apt install atom -y

#install postman
snap install postman -y

#reboot
sudo reboot now

#param git
#git config --global user.name "bentowski"
#git config --global user.email "benjamin.baudry@hotmail.com"

#source ~/.bash_aliases
