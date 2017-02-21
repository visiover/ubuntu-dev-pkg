#!/bin/sh


#Verify that host name and root directory are given 
if [ -z "$1" ]
	then 
 echo "Please specify  host name"
 exit 2
fi

if [ -z "$2" ]
	then 
 echo "Please specify root directory"
 exit 2
fi

#create nginx conf file in /etc/nginx/sites-available
cd /etc/nginx/sites-available

sudo touch $1.conf
sudo chmod 755 $1.conf 

cat > $1.conf << EOF
server {
     listen       127.0.0.1:80;
     server_name  $1;
     root      	  $2;
     index        index.php;



    location / {
        try_files \$uri /index.php?\$query_string;
    }

    location ~ \.php$ {
        try_files \$uri /index.php =404;
        fastcgi_split_path_info ^(.+\.php)(/.+)$;
        #fastcgi_pass   127.0.0.1:9100;
        fastcgi_pass unix:/var/run/php/php7.0-fpm.sock;
        fastcgi_index  index.php;
        fastcgi_param  SCRIPT_FILENAME  \$document_root\$fastcgi_script_name;
        include fastcgi_params;
    }
}
EOF


# create symlink to the conf file in sites enabled
cd ../sites-enabled
sudo ln -s ../sites-available/$1.conf 

# add host to /etc/hosts
sudo echo "127.0.0.1       $1" >> /etc/hosts

#restart nginx 
sudo /etc/init.d/nginx restart
