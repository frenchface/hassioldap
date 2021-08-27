#! /bin/bash
#variables
IP=192.168.1.2 #IP Address of remote LDAP authentication host

#Do not modify below this line
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ssh -o StrictHostKeyChecking=no -i /config/.ssh/id_rsa root@$IP &>> /config/log "username=$username password='$password' bash ./ldapauth.sh"
exit $x
