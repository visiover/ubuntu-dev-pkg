# Install must have ubuntu packages 
ubuntu_pkgs.sh will install all the must have ubuntu packages
sh ubuntu_pkgs.sh


# Install PHP7 dev environement with nginx and postgresql
php_dev_env.sh is a Simple bash script installing and verifying:

[✓]  php7.0  
[✓]  php-xdebug  
[✓]  nginx  
[✓]  git  
[✓]  composer  
[✓]  postgresql  
[✓]  pgadmin3  

# Add a new site to nginx
nginx_add_site.sh will add a new configuration file in site-availbe, create a symlink in
sites-enabled and add the new host in /etc/hosts  ;
sh nginx_add_site.sh yourHostName /path/to/your_web_directory

# Delete a site from nginx
nginx_delete_site.sh will remove all nginx configuration files and hots for the specified host:
sh nginx_delete_site.sh yourHostName


