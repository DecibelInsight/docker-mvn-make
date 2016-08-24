#! /usr/bin/env bash
#
# create_mysql.sh
# Copyright (C) 2016 mchristof <mchristof@Mikes-MacBook-Pro.local>
#
# Distributed under terms of the MIT license.
#


while getopts "H:u:p:hv" OPTION
do
     case $OPTION in
         H) HOST=$OPTARG;;
         u) USER=$OPTARG;;
         p) PASS=$OPTARG;;
         h)
             usage
             exit 1
             ;;
         ?)
             usage
             exit
             ;;
     esac
done

for f in *sql; do
    echo "Creating $f"
    mysql --host "$HOST" -u"$USER" -p"$PASS" -e "create database \`$(basename "$f" .sql)\`"
    # shellcheck disable=SC2094
    mysql --host "$HOST" -u"$USER" -p"$PASS" "$(basename "$f" .sql)" < "$f"
done

