#! /bin/bash
bash install.sh
/sbin/php-fpm -D
/sbin/httpd -DFOREGROUND
