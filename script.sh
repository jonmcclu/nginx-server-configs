#!/bin/env bash

chmod -R 777 /etc/nginx/**
cd /etc/nginx && git pull

if nginx -t &> /dev/null
then
        echo "Successfull"
        systemctl restart nginx
else
        echo "Failed"
fi
