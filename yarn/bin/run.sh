#!/bin/bash

cd /var/www/html

if [ -f "package.json" ]
then
    su www-data -c "yarn"
else
    echo "No package.json file found. Skipping...";
fi

/usr/bin/supervisord -n -c /etc/supervisord.conf
