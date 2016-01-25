#!/bin/bash

sudo apt-get purge ruby2* ruby-* abiword git geary* -y
sudo add-apt-repository ppa:git-core/ppa
sudo add-apt-repository ppa:chris-lea/node.js
sudo add-apt-repository ppa:mpstark/elementary-tweaks-daily
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install git vim terminator curl libreoffice nodejs pepperflashplugin-nonfree htop elementary-tweaks claws-mail claws-mail-plugins  -y
sudo apt-get autoremove -y
sudo apt-get clean

echo "Installing git prompt"
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
echo -e "\n\nsource $PWD/bash_additions" >> ~/.bashrc 
sudo echo -e "\n\nsource $PWD/bash_additions" >> /root/.bashrc

echo -e "\n\nsource $PWD/profile_additions" >> ~/.profile

echo "Linking claws-mail"
ln -s $PWD/claws-mail ~/.claws-mail

mkdir -p ~/programs
mkdir -p ~/bin
mkdir -p ~/development

ssh-keygen
echo
echo "Your gitlab key is:"
echo
cat ~/.ssh/id_rsa.pub
