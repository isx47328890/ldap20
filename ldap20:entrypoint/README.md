# LDAP Server
@edt ASIX M06-ASO
Servidor LDAP
Mark Santiago

**Imatge:**

* **[isx47328890/ldap20:entrypoint]** - Imatge amb varies opcions d'arrencada segons el valor que passem: start, initdb, initdbedt, fem servir volums per tenir *permanencia* de dades.

---

**Crear container interactiu:**
```bash
docker run --rm --name ldap.edt.org -h ldap.edt.org --net 2hisix -p 389:389-v ldap-data:/var/lib/ldap -v ldap-config:/etc/openldap/slapd.d/ --entrypoint /bin/bash -it isx47328890/ldap20:entrypoint
```

**Crear container detached:**
```bash
docker run --rm --name ldap.edt.org -h ldap.edt.org --net 2hisix -p 389:389 -v ldap-data:/var/lib/ldap -v ldap-config:/etc/openldap/slapd.d/  -d isx47328890/ldap20:entrypoint initdbedt | start | initdb
```

[isx47328890/ldap20:entrypoint]: https://hub.docker.com/layers/isx47328890/ldap20/entrypoint/images/sha256-07c5c6b3cbec31e7fae406c1974f99e67c04396cd2fbe9a4905a00c681202cda?context=repo
