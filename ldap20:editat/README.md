# LDAP Server
@edt ASIX M06-ASO
Servidor LDAP
Mark Santiago

**Imatge:**

* **[isx47328890/ldap20:editat]** - Imatge editat del servidor base amb database mdb, contrasenya de Manager xifrat i un sol fitxer ldif.

---

**Crear container interactiu:**
```bash
docker run --rm --name ldap.edt.org -h ldap.edt.org --net 2hisix -p 389:389 -it isx47328890/ldap20:editat /bin/bash
```

**Crear container detached:**
```bash
docker run --rm --name ldap.edt.org -h ldap.edt.org --net 2hisix -p 389:389 -d isx47328890/ldap20:editat
```

[isx47328890/ldap20:editat]: https://hub.docker.com/layers/isx47328890/ldap20/editat/images/sha256-0907d45d3fdfa91a8f76f0f76c95a8762560b93a6713802894beceb11c9fd6b8?context=explore