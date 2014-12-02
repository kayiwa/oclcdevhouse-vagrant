#!/usr/bin/env bash

cd /vagrant/www/html/oclcdevhouse/worldcat-discovery-php
composer install

cd /vagrant/www/html/oclcdevhouse
git clone https://github.com/OCLC-Developer-Network/worldcat-discovery-api-demo-php.git
cd worldcat-discovery-api-demo-php
composer install
