#!/bin/bash

sudo apt update && apt upgrade -y
sudo apt install php-mysqli mariadb-server mariadb-client\
                 php-curl php-gd php-mbstring php-xml\
                 php-xmlrpc php-soap php-intl php-zip -y

sudo systemctl restart apache2
sudo echo "<Directory /var/www/wordpress/>AllowOverride All</Directory>" >> /etc/apache2/sites-avalaible/wordpress.co>sudo a2enmod rewrite
sudo systemctl restart apache2
mysqld &

sudo mysql -e "CREATE DATABASE IF NOT EXISTS db_name;"
sudo mysql -e "CREATE USER IF NOT EXISTS 'user42'@'%' IDENTIFIED BY 'user42';"
sudo mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'root42'@'%' IDENTIFIED BY 'root42';"
sudo mysql -e "GRANT ALL PRIVILEGES ON db_name.* TO 'user42'@'%';"
#mysql -e "INSERT INTO db_name.wp_users (user_login,user_pass,user_nicename,user_email,user_url,user_registered,user_>sudo mysql -e "FLUSH PRIVILEGES;"


