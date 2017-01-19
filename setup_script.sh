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



echo "\n\n* Installing Composer"
echo "**************************************"
sudo apt-get install composer -y



echo "\n\n* Installing Postgres"
echo "**************************************"
sudo apt-get install postgres -y



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

