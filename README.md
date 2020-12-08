![alt text][logo]

## @edt ASIX M06-ASO
### Curs 2020 - 2021
### Mark Santiago

Imatges de Docker a [Docker hub de isx47328890]  
Repositori [GitHub de isx47328890] per veure el contingut  
Repositori [GitLab de isx47328890] per veure el contingut


* **isx47328890/ldap20:base** - Imatge base d'un servidor ldap que funciona amb detach, carrega 'edt.org', els elements bàsics i els usuaris bàsics.  

<br>

* **isx47328890/ldap20:editat** - Imatge editat del servidor base amb database mdb, contrasenya de Manager xifrat i un sol fitxer ldif.  

<br>

* **isx47328890/ldap20:m06** - Imatge d'un servidor ldap amb databse mdb, contrasenya de Manager xifrat. Funciona amb detach, carrega 'm06.cat', els elements bàsics i els usuaris bàsics.  

<br>

* **isx47328890/ldap20:acl** -  Imatge amb cn=config basat en ldap20:editat que s'utilitzarà per fer proves de les acls.  

<br>

* **isx47328890/phpldapadmin:20** - Imatge que instal·la i configura l'eina phpldapadmin i configura apache amb detach i port 80.  

<br>

* **isx47328890/ldap20:group** - Imatge editat del servidor base amb database mdb, contrasenya de Manager xifrat, un sol fitxer ldif, RDNs modificats, amb una entitat organizationalUnit anomenada grups, grups amb entitat posixAccount i schemas no necessaris eliminats.  

<br>

* **isx47328890/ldap20:practica** - Imatge editat del servidor base amb database mdb, contrasenya de Manager xifrat, un sol fitxer ldif, RDNs modificats, amb una entitat organizationalUnit anomenada grups, grups amb entitat posixAccount i schemas no necessaris eliminats, incluit schema 'x-master' i els seus atributs als usuaris pau, pere, user01 i user03.  

<br>

* **isx47328890/ldap20:entrypoint** - Imatge amb varies opcions d'arrencada segons el valor que passem: start, initdb, initdbedt, fem servir volums per tenir *permanencia* de dades.  



[logo]: https://www.openldap.org/images/headers/LDAPworm.gif
[Docker hub de isx47328890]: https://hub.docker.com/r/isx47328890/ldap20
[GitHub de isx47328890]: https://github.com/isx47328890/ldap20
[GitLab de isx47328890]: https://gitlab.com/isx47328890/ldap20
