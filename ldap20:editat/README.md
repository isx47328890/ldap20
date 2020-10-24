# LDAP Server
@edt ASIX M06-ASO
Servidor LDAP
Mark Santiago

**Imatge:**

* **isx47328890/ldap20:editat** - Imatge editat del servidor base amb database mdb, contrasenya de Manager xifrat i un sol fitxer ldif.

---

**Container interactiu:**
```
docker run --rm --name ldap.edt.org -h ldap.edt.org --net 2hisix -p 389:389 -it isx47328890/ldap20:editat /bin/bash
```

**Container detached:**
```
docker run --rm --name ldap.edt.org -h ldap.edt.org --net 2hisix -p 389:389 -d isx47328890/ldap20:editat
```