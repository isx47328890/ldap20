#! /bin/bash
ulimit -n1024
bash /opt/docker/install.sh
/sbin/slapd -d0
