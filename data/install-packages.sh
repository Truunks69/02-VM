#!/bin/bash
sudo apt-get update
export UBUNTU_FRONTEND='noninteractive'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password 0000'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password 0000'
sudo apt-get install apache2 php7.0 libapache2-mod-php7.0 mysql-server php7.0-mysql -y
sudo sed -i '462c\display_errors = On' /etc/php/7.0/apache2/php.ini
sudo sed -i '473c\display_startup_errors = On' /etc/php/7.0/apache2/php.ini
sudo service apache2 restart
rm /var/www/html/index.html
rm /var/www/html/install-packages.sh

