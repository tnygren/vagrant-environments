#!/usr/bin/env bash

apt-get update

apt-get install -y vim git zsh

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
