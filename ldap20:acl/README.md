# LDAP Server
@edt ASIX M06-ASO
Servidor LDAP
Mark Santiago

**Imatge:**

* **[isx47328890/ldap20:acl]** -  Imatge amb BD cn=config basat en ldap20:editat que s'utilitzarà per fer proves de les acls.

---

**Crear container interactiu:**
```bash
docker run --rm --name ldap.edt.org -h ldap.edt.org --net 2hisix -p 389:389 -it isx47328890/ldap20:acl /bin/bash
```

**Crear container detached:**
```bash
docker run --rm --name ldap.edt.org -h ldap.edt.org --net 2hisix -p 389:389 -d isx47328890/ldap20:acl
```

**Container interactiu ja creat:**
```bash
docker exec -it ldap.edt.org /bin/bash
```

---

### Exemples ACLs

* **Exemple-1:**  
  access to * by * read  
  > * Tothom pot veure totes les dades de la BD.

* **Exemple-2:**  
  access to * by * write  
  > * (Si tinc write, tinc read)
  > * Qualsevol usuari pot modificar dades de la BD.
  > * Els usuaris anònims no poden realitzar modificacions.


* **Exemple-3:**  
  access to * by self write by * read  
  > * Tothom pot veure les dades de la BD.
  > * Un usuari només pot modificar les seves dades.

  * **Exemple-3.1:**  
    access to *  
&nbsp;&nbsp;&nbsp;&nbsp;by * read  
&nbsp;&nbsp;&nbsp;&nbsp;by self write  
    > * Qualsevol usuari pot llegir dades de la BD.
    > * Quan intentem modificar un atribut, a l'hora d'identificar-nos.s'aplica la primera norma que és `by * read` ' i l'altre s'ignora.


* **Exemple-4**  
  access to attrs=homePhone by * read  
  access to * by * write  
  > * Tothom pot modificar tot, però quan s'intenta accedir l'atribut homePhone només es pot llegir.
  > * Quan es processa l'atribut homePhone fa match la primera regla i ignora les següents.
  * **Exemple-4.1**  
  access to * by * write  
  access to attrs= homePhone by * read  
    > * Mai s'executarà la segona regla perquè la primera que afecta a tots. els atributs, fa match i les següents ordres no s'evaluen.


* **Exemple-5**  
  access to attrs=homePhone  
  &nbsp;&nbsp;&nbsp;&nbsp;by dn.exact="cn=Anna Pou,ou=usuaris,dc=edt, dc=org" write  
  &nbsp;&nbsp;&nbsp;&nbsp;by * read  
  access to * by * write  
  > * Tots els usuaris poden modificar qualsevol dada de la BD, menys l'atribut homePhone que només es pot llegir
  > * Només l'usuari Anna pot modificar-la.

  * **Exemple-5.1**  
  access to attrs=homePhone  
    &nbsp;&nbsp;&nbsp;&nbsp;by dn.exact=”cn=Anna Pou,ou=usuaris,dc=edt,dc=org’ write  
    &nbsp;&nbsp;&nbsp;&nbsp;[by * none]  
  access to attrs=homePhone  
    &nbsp;&nbsp;&nbsp;&nbsp;by * read  
  access to * by * write  
  [access to * by * none]  
    > * Està malament perquè la segona instrucció mai s'executarà, si s'intenta accedir a homePhone sempre farà match amb la primera clàusula *what*

* **Exemple-6**  
  access to attrs=homePhone  
  &nbsp;&nbsp;&nbsp;&nbsp;by dn.exact=”cn=Anna Pou,ou=usuaris,dc=edt,dc=org” write  
  &nbsp;&nbsp;&nbsp;&nbsp;by dn.exact=”cn=Admin System,ou=usuaris,dc=edt,dc=org” write  
  &nbsp;&nbsp;&nbsp;&nbsp;by * read  
  access to *  
  &nbsp;&nbsp;&nbsp;&nbsp;by dn.exact=”cn=Admin System,ou=usuaris,dc=edt,dc=org” write  
  &nbsp;&nbsp;&nbsp;&nbsp;by self write  
  &nbsp;&nbsp;&nbsp;&nbsp;by * read  
  > * A l'atribut homePhone qualsevol usuari pot llegir-ho però només els usuaris Anna Pou i Admin System
  > * Els altres camps poden ser modificats per l'usuari Admin System
  > * Els usuaris poden modificar els seus propis camps i llegir les dades dels altres usuaris

* **Exemple-7**  
  access to attrs=userPassword  
  &nbsp;&nbsp;&nbsp;&nbsp; by self write  
  access to * by * read  
  > * Tot els usuaris poden modificar el seu propi password i tothom pot veure les dades dels altres menys el password. (Falta *by * auth*)

  * **Exemple-7.1**  
  access to attrs=userPassword  
  &nbsp;&nbsp;&nbsp;&nbsp;by self write  
  &nbsp;&nbsp;&nbsp;&nbsp;by * auth  
  access to *  
  &nbsp;&nbsp;&nbsp;&nbsp;by * read  
    > * S'aplica el mateix exemple 7 però ara amb *by * auth* que es el bind d'autenticació

---

### Comandes per fer comprovacions ACLs

**Consulta de dades**
```bash
ldapsearch -x -LLL -b 'dc=edt,dc=org'
```

**Canviar password de Pau amb usuari Pau:**
```bash
ldappasswd -x -v -D 'cn=Pau Pou,ou=usuaris,dc=edt,dc=org' -w pau -s pau
```

**Canviar password de Pau amb usuari Anna:**
```bash
ldappasswd -x -v -D 'cn=Anna Pou,ou=usuaris,dc=edt,dc=org' -w anna 'cn=Pau Pou,ou=usuaris,dc=edt,dc=org' -s pau
```

**Modificar el mail Pau amb usuari Pau:**
```bash
ldapmodify -x -v -D 'cn=Pau Pou,ou=usuaris,dc=edt,dc=org' -w pau -f mod2.ldif 
```

**Modificar mail Pau amb usuari Anna:**
```bash
ldapmodify -x -v -D 'cn=Anna Pou,ou=usuaris,dc=edt,dc=org' -w anna -f mod2.ldif 
```

**Modificar homePhone Pau amb usuari Pau:**
```bash
ldapmodify -x -v -D 'cn=Pau Pou,ou=usuaris,dc=edt,dc=org' -w pau -f mod3.ldif 
```

**Modificar homePhone Pau amb usuari Anna:**
```bash
ldapmodify -x -v -D 'cn=Anna Pou,ou=usuaris,dc=edt,dc=org' -w anna -f mod3.ldif 
```

---

### Comandes per llistar configuració dinàmica

**Llistar config de dc=edt,dc=org**
```bash
ldapsearch -x -LLL -D 'cn=Sysadmin,cn=config' -w syskey -b 'olcDatabase={1}mdb,cn=config'
```

**Llistar ACLs de dc=edt,dc=org**
```bash
ldapsearch -x -LLL -D 'cn=Sysadmin,cn=config' -w syskey -b 'olcDatabase={1}mdb,cn=config' olcAccess
```
---

### Exemple fitxer ldif per modificació amb configuració dinàmica

```
dn: olcDatabase={1}mdb,cn=config
changetype: modify
delete: olcAccess
-
add: olcAccess
olcAccess: to attrs=userPassword
  by self write
  by * auth
olcAccess: to * 
  by * read

```


[isx47328890/ldap20:acl]: https://hub.docker.com/layers/isx47328890/ldap20/acl/images/sha256-e91f0ca0ae690ec6532c6881f2fd3a8e8ef90ce7a29889d892649413e5b443d2?context=explore
