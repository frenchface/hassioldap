#varibles                                            ldapauth.sh                                                               
domain="@home.int"
ldapip=10.50.0.2
base="dc=home,dc=int"


#do not modify below this line

user=$username$domain
if [ -z "$username" ]; then exit 1; fi
if [ -z "$password" ]; then exit 1; fi
#echo $user
search1=$(ldapsearch -H ldap://$ldapip -x -w "$password" -D $user -b "$base" "(samAccountName=$username)" | grep search:)
#echo $search1
if [ -z "$search1" ]; then echo "NULL"; else echo "User '$username' authenticated successfully."; fi
if [ -z "$search1" ]; then echo "NULL"; else echo "name = $username"; fi
if [ -z "$search1" ]; then echo "NULL"; else exit 0; fi
exit 1
