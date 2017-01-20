#!/bin/sh

echo "\n\n
██╗  ██╗ ██████╗ ██████╗ ██╗   ██╗███████╗   ██████╗ 
██║ ██╔╝██╔═══██╗██╔══██╗██║   ██║██╔════╝   ╚════██╗
█████╔╝ ██║   ██║██║  ██║██║   ██║███████╗    █████╔╝
██╔═██╗ ██║   ██║██║  ██║██║   ██║╚════██║   ██╔═══╝ 
██║  ██╗╚██████╔╝██████╔╝╚██████╔╝███████║██╗███████╗
╚═╝  ╚═╝ ╚═════╝ ╚═════╝  ╚═════╝ ╚══════╝╚═╝╚══════╝
                                                     "
echo "\tAuthor: Maher M'Hiri - mamh@jfmedier.dk"


echo "\n\n** Installing Kodus.2 packages **"
sleep 1  # Waits 2 seconds.

echo "\n\n***********************************************"
echo "\t Updating to latest package lists"
echo "***********************************************"
sudo apt-get update -y # To get the latest package lists


echo "\n\n* Installing Php7.0"
echo "**************************************"
sudo apt-get install php7.0  -y


echo "\n\n* Installing Php-xdebug"
echo "**************************************"
sudo apt-get install php-xdebug



echo "\n\n* Installing Nginx"
echo "**************************************"
sudo apt-get install nginx -y




echo "\n\n* Installing Php-xdebug"
echo "**************************************"
sudo apt-get install git -y

echo "\nPlease insert your git user name: "
read input_variable
git config --global user.name "$input_variable"

echo "\nPlease insert your git user mail: "
read input_variable
git config --global user.email "$input_variable"

git config --global push.default simple





echo "\n\n* Installing Composer"
echo "**************************************"
sudo apt-get install composer -y

#install CodeSniffer
composer global require "squizlabs/php_codesniffer=*"

#install MessDetector
composer global require "phpmd/phpmd=@stable"


echo "\n\n* Installing Postgres"
echo "**************************************"
sudo apt-get install postgresql -y


echo "\n\n** Configure your default postgres user password"
echo "insert '\password postgres'"
echo "to exit postgres prompt insert '\q' \n\n"
sudo -u postgres psql



echo "\n\n* Installing PgAdmin3"
echo "**************************************"
sudo apt-get install pgadmin3






echo "\n\n\n
██╗  ██╗ ██████╗ ██████╗ ██╗   ██╗███████╗   ██████╗ 
██║ ██╔╝██╔═══██╗██╔══██╗██║   ██║██╔════╝   ╚════██╗
█████╔╝ ██║   ██║██║  ██║██║   ██║███████╗    █████╔╝
██╔═██╗ ██║   ██║██║  ██║██║   ██║╚════██║   ██╔═══╝ 
██║  ██╗╚██████╔╝██████╔╝╚██████╔╝███████║██╗███████╗
╚═╝  ╚═╝ ╚═════╝ ╚═════╝  ╚═════╝ ╚══════╝╚═╝╚══════╝
                                                     "

check()
{

 dpkg -s "$1" >/dev/null 2>&1 && {
        echo "[✓]  $1"
    } || {
       echo "[x]  $1 not installed"
    }
}

echo "\n* Installed packages verification"
echo "**************************************"
check php7.0
check php-xdebug
check nginx
check git
check composer
check postgresql
check pgadmin3
echo "\n"

