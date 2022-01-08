#!/bin/bash
curl "https://api.securitytrails.com/v1/domain/$1/subdomains?children_only=false&include_inactive=true" -H 'APIKEY: cTrZc2scN6vYsHo172qkHHauU3b5vtFk' -H 'Accept: application/json' | tee $1.txt
cat $1.txt | tr -d '",}][/: {' | sed -e "s/$/.$1/" | tee new-$1.txt
rm $1.txt


# curl "https://api.securitytrails.com/v1/domain/$1/subdomains?children_only=true&include_inactive=true" -H 'APIKEY: cTrZc2scN6vYsHo172qkHHauU3b5vtFk' -H 'Accept: application/json'
