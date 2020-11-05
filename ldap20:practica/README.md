# LDAP Server
@edt ASIX M06-ASO
Servidor LDAP
Mark Santiago

**Imatge:**

* **[isx47328890/ldap20:practica]** - Imatge editat del servidor base amb database mdb, contrasenya de Manager xifrat, un sol fitxer ldif, RDNs modificats, amb una entitat organizationalUnit anomenada grups, grups amb entitat posixAccount i schemas no necessaris eliminats, incluit schema 'x-master' als usuaris pau,pere,user01 i user03

---

**Crear container interactiu:**
```bash
docker run --rm --name ldap.edt.org -h ldap.edt.org --net 2hisix -p 389:389 -it isx47328890/ldap20:practica /bin/bash
```

**Crear container detached:**
```bash
docker run --rm --name ldap.edt.org -h ldap.edt.org --net 2hisix -p 389:389 -d isx47328890/ldap20:practica
```

[isx47328890/ldap20:practica]: https://hub.docker.com/layers/isx47328890/ldap20/practica/images/sha256-f0b30e06a7dac3ba196786c664434cae6fbcec1bad8cb874d4d59fd4d95c1483?context=explore
