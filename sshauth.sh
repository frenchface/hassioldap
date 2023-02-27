#! /bin/bash
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

ssh -o StrictHostKeyChecking=no -i /config/.ssh/id_rsa root@<yourIPhere> &>> /config/log "username=$username password='$password' bash ./ldapauth.sh"

exit $x
