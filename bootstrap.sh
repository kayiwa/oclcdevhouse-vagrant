#!/usr/bin/env bash

sudo apt-get update

sudo apt-get install -y curl

sudo apt-get -y install git-core

sudo apt-get install -y apache2
rm -rf /var/www
mkdir /vagrant/www
ln -fs /vagrant/www /var/www

sudo apt-get install -y php5
sudo apt-get install -y php5-curl
sudo apt-get install -y php5-mcrypt
sudo apt-get install -y libapache2-mod-php5

curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

sudo mkdir /vagrant/www/html
sudo mkdir /vagrant/www/html/oclcdevhouse
sudo mkdir /vagrant/www/html/oclcdevhouse/worldcat-discovery-php

/etc/init.d/apache2 restart
