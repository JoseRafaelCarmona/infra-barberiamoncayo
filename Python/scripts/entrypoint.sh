#!/bin/bash

set -x 
set -e

function obtener_codigo(){
  ## wget url perrona
  echo "" 
}
function migraciones(){
  ## realizar migraciones python
}


function run(){
  python manage.py runserver
}

function main(){
  python3 -m http.server 8080
}

main
