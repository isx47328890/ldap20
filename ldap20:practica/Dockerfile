# ldapserver
FROM fedora:32
LABEL version="1.0"
LABEL author="@edt ASIX-M06"
LABEL subject="ldapserver"
RUN dnf -y install openldap-servers openldap-clients
RUN mkdir /opt/docker
RUN mkdir /opt/docker/images
RUN mkdir /opt/docker/documents
COPY * /opt/docker/
RUN mv /opt/docker/*.jpeg /opt/docker/images/
RUN mv /opt/docker/*.pdf /opt/docker/documents/
RUN chmod +x /opt/docker/startup.sh
WORKDIR /opt/docker
CMD /opt/docker/startup.sh
EXPOSE 389
