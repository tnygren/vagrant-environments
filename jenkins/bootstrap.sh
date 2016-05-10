#!/usr/bin/env bash

apt-get update

apt-get install -y vim git zsh

# Language setting
locale-gen "fi_FI.UTF-8"
dpkg-reconfigure locales
locale

# Java
apt-get install -y default-jdk default-jre

# Jenkins
wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install -y jenkins

# sudo VBoxClient-all
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi

apt-get -y autoremove
