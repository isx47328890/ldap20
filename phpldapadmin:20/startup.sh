#! /bin/bash
bash install.sh
/sbin/php-fpm
/sbin/httpd -DFOREGROUND
