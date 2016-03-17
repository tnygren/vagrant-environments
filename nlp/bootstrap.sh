#!/usr/bin/env bash

apt-get update
#apt-get install -y apache2 vim xfce4 virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11
#apt-get install -y apache2 vim
apt-get install -y apache2 vim git zsh

#python
apt-get install -y python-sklearn python-nltk python-qt4 python-pandas

#java
apt-get install -y default-jdk
ln -s /vagrant/ .

#sudo VBoxClient-all
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi

#NLTK
python -m nltk.downloader brown
python -m nltk.downloader punkt
python -m nltk.downloader stopwords
python -m nltk.downloader wordnet
