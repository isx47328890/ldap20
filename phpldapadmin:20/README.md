![alt text][logo]
## @edt ASIX M06-ASO
### Curs 2020-2021
### Mark Santiago

Imatges de Docker a [Docker hub de isx47328890]  
Repositori [GitHub de isx47328890] per veure el contingut  
Repositori [GitLab de isx47328890] per veure el contingut  


* **isx47328890/phpldapadmin20** - Imatge que instal·la i configura l'eina phpldapadmin i configura apache amb detach i port 80

**Container interactiu**
```bash
docker run --rm --name phpldapadmin.edt.org -h phpldapadmin.edt.org --net 2hisix -p 80:80 -it isx47328890/phpldapadmin20
/bin/bash
```

**Container detached**
```bash
docker run --rm --name phpldapadmin.edt.org -h phpldapadmin.edt.org --net 2hisix -p 80:80 -d isx47328890/phpldapadmin20
```

[Docker hub de isx47328890]: https://hub.docker.com/u/isx47328890
[GitHub de isx47328890]: https://github.com/isx47328890/ldap20
[GitLab de isx47328890]: https://gitlab.com/isx47328890/ldap20
[logo]: https://lh3.googleusercontent.com/proxy/V3sAZsFeDSLO8hrIRDygrhfaZp7WYv8ZPp-G-H0HUMQ18t5cl2nWrgcxOiBxjQp0YkbP0Fe5RC7f21pegDEJTMGKw-rQ7Uchb50dICdXwxzIQSNNag