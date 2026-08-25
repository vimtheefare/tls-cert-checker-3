#!/bin/bash

if [ ! -f domains.txt ]; then
  echo "domains.txt file not found!"
  exit 1
fi

while IFS= read -r domain; do
  expiry_date=$(echo | openssl s_client -connect "$domain:443" -servername "$domain" 2>/dev/null | openssl x509 -noout -enddate | cut -d= -f2)
  if [ -z "$expiry_date" ]; then
    echo "$domain: Could not retrieve certificate"
  else
    echo "$domain: $expiry_date"
  fi
done < domains.txt
