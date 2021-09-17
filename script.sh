#!/bin/env bash

chmod -R 777 /etc/nginx/**
cd /etc/nginx && 

if git pull; then
        echo "Successful"
else
        echo "The Git Pull has failed with status:  $?"
fi

if nginx -t &> /dev/null
then
        echo "Successfull"
        systemctl restart nginx
else
        echo "Nginx Test has failed with the status: $?"
fi
