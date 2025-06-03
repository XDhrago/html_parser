#!/bin/bash

#HTML Parsing - Subdomain finder

if [ "$1" == "" ]; then
  echo "HTML Parsing - Subdomain Finder"
  echo "Modo de uso: $0 DOMAIN"
  echo "Exemplo: $0 google.com"
else

  echo "================================================================="
  echo ""
  echo "             [+] Resolvendo URLs em $1"
  echo ""
  echo "================================================================="

wget -O index.html $1 &> /dev/null  # Download html from site

grep -Po '(?<=href=")[^"]*' index.html >lista 

for url in $(cat lista | cut -d ":" -f 2 | sed 's/^..//' | cut -d "/" -f 1); do host $url |grep "has address" ; done > $1.ip.txt #Filter results and send to a file

awk '!seen[$0]++' $1.ip.txt #Remove repeated lines

  echo "================================================================="
  echo ""
  echo "             [+] Salvando resultados em $1.ip.txt"
  echo ""
  echo "================================================================="

#cat $1.ip.txt #Show on screen the file contents


rm index.html
rm lista


  echo "================================================================="
  echo ""
  echo "             [+] Concluido"
  echo ""
  echo "================================================================="


fi
