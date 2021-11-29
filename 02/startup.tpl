apt update
apt install apache2 -y


#PHP dependencies
sudo apt install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt update

#php -m | grep -i <module_name>
sudo apt install php7.4
sudo apt install php-zip
sudo apt install php7.4-mbstring
sudo apt install php7.4-gd
sudo apt install php7.4-curl
sudo apt install php-xml
sudo apt install php7.4-zip
sudo apt install php7.4-dom

sudo apt install php7.4-mysql



sudo service apache2 restart

sudo apt-get install mariadb-server mariadb-client


#sudo mysql_secure_installation

#sudo mariadb -u root
#create DATABASE nextcloud_db;
#grant all privileges on nextcloud_db.* TO 'nextcloud'@'%' identified by 'testpassword';
#flush privileges;

#sudo mkdir /mnt/nextcloud-data
#wget https://download.nextcloud.com/server/releases/nextcloud-22.2.3.zip
#sudo mv nextcloud-22.2.3.zip /var/www/html/

# cd /var/www/html
#sudo apt install unzip
#sudo unzip nextcloud-22.2.3.zip
#sudo rm nextcloud-22.2.3.zip 

#sudo chown -R www-data:www-data nextcloud/
#sudo touch /etc/apache2/sites-available/nextcloud.conf