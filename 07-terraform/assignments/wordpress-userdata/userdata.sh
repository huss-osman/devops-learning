#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install -y apache2
sudo apt install php libapache2-mod-php php-cli php-common php-imap php-snmp php-xml php-zip php-mbstring php-curl php-mysqli php-gd php-intl -y

sudo systemctl start apache2
sudo systemctl enable apache2

echo "<?php phpinfo(); ?>" | sudo tee /var/www/html/info.php

cd /tmp
curl -LO https://wordpress.org/latest.tar.gz
tar xzvf latest.tar.gz -C /var/www/html/
chown -R www-data:www-data /var/www/html/wordpress
chmod -R 755 /var/www/html/wordpress

sudo systemctl restart apache2
