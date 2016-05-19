#!/usr/bin/env bash

apt-get update
#apt-get install -y apache2 vim xfce4 virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11
#apt-get install -y apache2 vim git zsh
apt-get install -y vim git zsh

# Language settings
locale-gen "fi_FI.UTF-8"
dpkg-reconfigure locales
locale

#python
#apt-get install -y python-sklearn python-nltk python-qt4 python-pandas

#Anaconda
#https://www.continuum.io/downloads
apt-get -y install build-essential python3-dev python-pip

#Flask
pip install Flask

#webserver
#apt-get install -y apache2

#java
#apt-get install -y default-jdk

#sudo VBoxClient-all
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi

apt-get -y autoremove
