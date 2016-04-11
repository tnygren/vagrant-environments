#!/usr/bin/env bash

apt-get update
#apt-get install -y apache2 vim xfce4 virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11
#apt-get install -y apache2 vim git zsh
apt-get install -y vim git zsh

#postgresql
apt-get install -y postgresql postgresql-client

#java
apt-get install -y default-jdk
apt-get install -y libpostgresql-jdbc-java

#languae setting
locale-gen "fi_FI.UTF-8"
dpkg-reconfigure locales
locale

#sudo VBoxClient-all
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi

apt-get -y autoremove
