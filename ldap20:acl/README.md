# LDAP Server
@edt ASIX M06-ASO
Servidor LDAP

Exemple:
access to * by * read
access to * by * write
access to * by self write by * read

access to *
	by self write
	by * read

Exemple-04
access to attrs=homePhone by * read
access to * by * write

Exemple-05
access to attrs=homePhone
by dn.exact=”cn=Anna Pou,ou=usuaris,dc=edt,dc=org” write
by * read
access to * by * write

Exemple-05.1
access to attrs=homePhone
by dn.exact=”cn=Anna Pou,ou=usuaris,dc=edt,dc=org’ write
access to attrs=homePhone
by * read
access to * by * write

Exemple-06
access to attrs=homePhone
by dn.exact=”cn=Anna Pou,ou=usuaris,dc=edt,dc=org” write
by dn.exact=”cn=Admin System,ou=usuaris,dc=edt,dc=org” write
by * read
access to *
by dn.exact=”cn=Admin System,ou=usuaris,dc=edt,dc=org” write
by self write
by * read


### canviar password de pau amb usuari pau
ldappasswd -x -v -D 'cn=Pau Pou,ou=usuaris,dc=edt,dc=org' -w pau -s pau

### canviar password de anna amb usuari pau
ldappasswd -x -v -D 'cn=Pau Pou,ou=usuaris,dc=edt,dc=org' -w pau -s anna 'cn=Anna Pou,ou=usuaris,dc=edt,dc=org'

### modificar mail amb usuari pau
ldapmodify -x -D 'cn=Pau Pou,ou=usuaris,dc=edt,dc=org' -w pau -f pr.mod1.ldif 

### modificar mail amb usuari anna
ldapmodify -x -D 'cn=Anna Pou,ou=usuaris,dc=edt,dc=org' -w anna -f pr.mod1.ldif 

### modificar homePhone amb usuari Pau
ldapmodify -x -D 'cn=Pau Pou,ou=usuaris,dc=edt,dc=org' -w pau -f pr.mod2.ldif 

### modificar homePhone amb usuari anna
ldapmodify -x -D 'cn=Anna Pou,ou=usuaris,dc=edt,dc=org' -w anna -f pr.mod2.ldif 


