#!/bin/bash
DIR="/var/www/html/"
# init
# look for empty dir 

if [ "$(ls -A $DIR)" ]; then
     echo "Take action $DIR is not Empty"
else
    echo "$DIR is Empty, copying backup files"
    cp -r /backup/* /var/www/html/
fi

exec apache2-foreground