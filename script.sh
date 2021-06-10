#!/bin/env bash

if nginx -t &> /dev/null
then
        echo "Successfull"
        systemctl restart nginx
else
        echo "Failed"
fi
