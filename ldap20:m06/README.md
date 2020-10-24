# LDAP Server
@edt ASIX M06-ASO
Servidor LDAP
Mark Santiago

**Imatge:**

* **[isx47328890/ldap20:m06]** - Imatge d'un servidor ldap amb databse mdb, contrasenya de Manager xifrat. Funciona amb detach, carrega 'm06.cat', els elements bàsics i els usuaris bàsics.

---

**Container interactiu:**
```
docker run --rm --name ldap.m06.cat -h ldap.m06.cat --net 2hisix -p 389:389 -it isx47328890/ldap20:m06 /bin/bash
```

**Container detached:**
```
docker run --rm --name ldap.m06.cat -h ldap.m06.cat --net 2hisix -p 389:389 -d isx47328890/ldap20:m06
```

[isx47328890/ldap20:m06]: https://hub.docker.com/layers/isx47328890/ldap20/m06/images/sha256-faa224c1d7fc4b91cf9ac835c753d4a460980af32bf387908078c50f96ddd77a?context=explore