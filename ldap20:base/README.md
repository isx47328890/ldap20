# LDAP Server
@edt ASIX M06-ASO
Servidor LDAP
Mark Santiago

**Imatge:**

* **[isx47328890/ldap20:base]** - Imatge base d'un servidor ldap que funciona amb detach, carrega edt.org, els elements bàsics i els usuaris bàsics.

---

**Crear container interactiu:**
```bash
docker run --rm --name ldap.edt.org -h ldap.edt.org --net 2hisix -p 389:389 -it isx47328890/ldap20:base /bin/bash
```

**Crear container detached:**
```bash
docker run --rm --name ldap.edt.org -h ldap.edt.org --net 2hisix -p 389:389 -d isx47328890/ldap20:base
```

[isx47328890/ldap20:base]: https://hub.docker.com/layers/isx47328890/ldap20/base/images/sha256-9d72a93778654cb8eb0fcb28ad2deb1bb5e4667814e7b1d733e385cb898dcc9e?context=explore