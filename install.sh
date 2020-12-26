#!/usr/bin/env bash

sudo apt install software-properties-common -y
sudo add-apt-repository ppa:ondrej/php
sudo apt update

sudo apt install -y php7.4 php7.4-cli php7.4-common php7.4-json php7.4-opcache php7.4-mysql php7.4-mbstring php7.4-zip php7.4-fpm php7.4-xml php7.4-curl nginx unzip git vim fish

wget https://getcomposer.org/download/2.0.8/composer.phar
sudo mv composer.phar /usr/local/sbin/composer
sudo chmod a+x /usr/local/sbin/composer

wget https://download.phpbb.com/pub/release/3.3/3.3.2/phpBB-3.3.2.zip
sudo mv phpBB-3.3.2.zip /var/www/html

cd /var/www/html
sudo unzip phpBB-3.3.2.zip

cd /var/www/html/phpBB3
sudo rm -rf vendor
sudo chmod a+w config.php
sudo composer update
sudo composer require aws/aws-sdk-php
sudo git clone https://github.com/wusung/phpbb-extension-s3.git ext/austinmaddox/s3

cd /var/www/html/phpBB3/ext/austinmaddox/s3
sudo rm -rf vendor
sudo composer update
sudo composer require ocramius/proxy-manager
sudo composer require guzzlehttp/guzzle:6.3
