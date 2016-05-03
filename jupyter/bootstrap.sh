#!/usr/bin/env bash

apt-get update
#apt-get install -y apache2 vim xfce4 virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11
#apt-get install -y apache2 vim git zsh
apt-get install -y vim git zsh

#python
#apt-get install -y python-sklearn python-nltk python-qt4 python-pandas

#Anaconda
#https://www.continuum.io/downloads
apt-get -y install build-essential python3-dev
#cd
#wget https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda2-4.0.0-Linux-x86_64.sh
#bash Anaconda2-4.0.0-Linux-x86_64.sh
#source ~/.bashrc
#conda install jupyter?
#jupyter notebook --ip=0.0.0.0
#localhost:8888

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
