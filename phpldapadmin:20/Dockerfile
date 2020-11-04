# phpldapadmin
FROM fedora:27
LABEL version="1.0"
LABEL author="@edt ASIX-M06 Mark santiago"
LABEL subject="phpldapadmin"
RUN dnf -y install phpldapadmin php-xml httpd
RUN mkdir /opt/phpldapadmin
COPY * /opt/phpldapadmin/
RUN chmod +x /opt/phpldapadmin/startup.sh
WORKDIR /opt/phpldapadmin
CMD /opt/phpldapadmin/startup.sh
EXPOSE 80
