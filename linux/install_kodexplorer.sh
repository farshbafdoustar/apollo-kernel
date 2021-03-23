#!/bin/bash
docker run -d -p 8080:80 --restart always --name kodexplorer -v /data/:/var/www/html xaljer/kodexplorer
