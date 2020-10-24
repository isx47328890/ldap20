# LDAP Server
@edt ASIX M06-ASO
Servidor LDAP
Mark Santiago

**Imatge:**

* **isx47328890/ldap20:base** - Imatge base d'un servidor ldap que funciona amb detach, carrega edt.org, els elements bàsics i els usuaris bàsics.

---

**Container interactiu:**
```
docker run --rm --name ldap.edt.org -h ldap.edt.org --net 2hisix -p 389:389 -it isx47328890/ldap20:base /bin/bash
```

**Container detached:**
```
docker run --rm --name ldap.edt.org -h ldap.edt.org --net 2hisix -p 389:389 -d isx47328890/ldap20:base
```
