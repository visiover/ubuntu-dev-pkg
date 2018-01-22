#!/bin/bash

if [ "$(whoami)" != "root" ]
then
    echo "You need to be root YO !. Run with suda"
    exit 1
fi

echo "Downloading the latest PhpStorm to /tmp"
cd /tmp
curl -Lo PhpStorm.tar.gz "https://data.services.jetbrains.com/products/download?code=PS&platform=linux"
tar -xzf /tmp/PhpStorm.tar.gz
rm /tmp/PhpStorm.tar.gz

echo "Removing old PhpStorm"
rm -rf /opt/phpstorm

echo "Copying new PhpStorm"
mv /tmp/PhpStorm* /opt/phpstorm

echo "New PhpStorm has been installed"
