#!/bin/bash

read -p "entrez la valeur de ENVIRON: " TEMP

case "$TEMP" in
  "dev") export ENVIRON="dev"
         echo "Succès"
  ;;
  "prod") export ENVIRON="prod"
         echo "Succès"
  ;;
  "test") export ENVIRON="test"
  echo "Succès"
  ;;
  *) echo "Erreur"
  ;;
esac

