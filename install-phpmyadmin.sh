pkg install php phpmyadmin mariadb
pkg install libxml2
cd $PREFIX/share/phpmyadmin

nano config.inc.php

#Find the configuration host and add port 3306 after localhost

$cfg['Servers'][$i]['host'] = 'localhost:3306;
$cfg['Servers'][$i]['AllowNoPassword'] = true;

#In case your MariaDB MySQL account has no password then change ‘AllowNoPassword’ value from false to true.


#Update: Fix Deprecated Function Error In Latest PHP
#If you’ve installed PHP and PHPMyAdmin in Termux, you might encounter error messages about deprecated functions when trying to access PHPMyAdmin.
#This happens because PHPMyAdmin relies on some outdated functions that newer PHP versions don’t support.
#But don’t worry—we can easily fix this by executing following commands.

mkdir -p $PREFIX/etc/php
echo 'error_reporting = 0' >> $PREFIX/etc/php/php.ini


#Start MariaDB Server in background.

mysqld_safe &


#Start PHP Server in PHPMyAdmin directory

php -S localhost:8080 -t $PREFIX/share/phpmyadmin/



