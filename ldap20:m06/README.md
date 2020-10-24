# LDAP Server
@edt ASIX M06-ASO
Servidor LDAP
Mark Santiago

**Imatge:**

* **isx47328890/ldap20:m06** - Imatge d'un servidor ldap amb databse mdb, contrasenya de Manager xifrat. Funciona amb detach, carrega 'm06.cat', els elements bàsics i els usuaris bàsics.

---

**Container interactiu:**
```
docker run --rm --name ldap.m06.cat -h ldap.m06.cat --net 2hisix -p 389:389 -it isx47328890/ldap20:m06 /bin/bash
```

**Container detached:**
```
docker run --rm --name ldap.m06.cat -h ldap.m06.cat --net 2hisix -p 389:389 -d isx47328890/ldap20:m06
```