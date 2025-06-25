#!/bin/bash
trap "exit" SIGINT
echo Configured to generate new fortune every $INTERVAL seconds
mkdir -p /var/htdocs
while :
do
  echo $(date) Writing fortune to /var/htdocs/index.html
  /usr/games/fortune > /var/htdocs/index.html
  sleep $INTERVAL
done

# $INTERVAL = Run time variable

# if envorinment is development $INTERVAL=25
# if envorinment is development $INTERVAL=1

# $DB_HOST
# $DB_USER
# $DB_PASS

