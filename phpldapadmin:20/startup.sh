#! /bin/bash
ulimit -n1024
bash install.sh
/sbin/php-fpm
/sbin/httpd -DFOREGROUND
