# LDAP Server
@edt ASIX M06-ASO
Servidor LDAP
Mark Santiago

**Imatge:**

* **[isx47328890/ldap20:group]** - Imatge editat del servidor base amb database mdb, contrasenya de Manager xifrat, un sol fitxer ldif, RDNs modificats, amb una entitat organizationalUnit anomenada grups, grups amb entitat posixAccount i schemas no necessaris eliminats

---

**Crear container interactiu:**
```bash
docker run --rm --name ldap.edt.org -h ldap.edt.org --net 2hisix -p 389:389 -it isx47328890/ldap20:group /bin/bash
```

**Crear container detached:**
```bash
docker run --rm --name ldap.edt.org -h ldap.edt.org --net 2hisix -p 389:389 -d isx47328890/ldap20:group
```

[isx47328890/ldap20:group]: https://hub.docker.com/layers/isx47328890/ldap20/group/images/sha256-dba04e81afc2d3005691b9a26f2aeaf4c82c5123125e389732eae9e070d68289?context=explore
