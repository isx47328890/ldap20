![alt text][logo]

## @edt ASIX M06-ASO
### Curs 2020 - 2021
### Mark Santiago

Imatges de Docker a [Docker hub de isx47328890]  
Repositori [GitHub de isx47328890] per veure el contingut  
Repositori [GitLab de isx47328890] per veure el contingut

---
* **isx47328890/ldap20:base** - Imatge base d'un servidor ldap que funciona amb detach, carrega 'edt.org', els elements bàsics i els usuaris bàsics.


* **isx47328890/ldap20:editat** - Imatge editat del servidor base amb database mdb, contrasenya de Manager xifrat i un sol fitxer ldif.


* **isx47328890/ldap20:m06** - Imatge d'un servidor ldap amb databse mdb, contrasenya de Manager xifrat. Funciona amb detach, carrega 'm06.cat', els elements bàsics i els usuaris bàsics.


* **isx47328890/ldap20:acl** -  Imatge amb cn=config basat en ldap20:editat que s'utilitzarà per fer proves de les acls.

* **isx47328890/phpldapadmin20** - Imatge que instal·la i configura l'eina phpldapadmin i configura apache amb detach i port 80


[logo]: https://www.ecured.cu/images/0/0a/Ldaplogo.jpg
[Docker hub de isx47328890]: https://hub.docker.com/u/isx47328890
[GitHub de isx47328890]: https://github.com/isx47328890/ldap20
[GitLab de isx47328890]: https://gitlab.com/isx47328890/ldap20
