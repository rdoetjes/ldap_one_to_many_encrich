#!/usr/bin/bash
 ./ldap-one-to-many.py --sLdap="ldap://127.0.0.1/" \
		--sBind="cn=admin,dc=phonax" \
		--sPass="Phonax01" \
        --sBaseDN="ou=source,ou=users,dc=phonax" \
		--sAttribs="loginShell, description" \
		--sFilter="(&(objectClass=posixAccount)(cn=user1))" \
		--dLdap=ldap://127.0.0.1 \
		--dBind="cn=admin,dc=phonax" \
		--dPass="Phonax01" \
        --dBaseDN="ou=dest,ou=users,dc=phonax" \
		--dAttribs="loginShell, description" \
		--dFilter="(&(objectClass=posixAccount)(cn=*))" \
        --simulate \
        #--replace \

