#!/bin/bash
docker run -p 8081:80 -d --rm --name static_site hometask-image
docker cp ./index.html static_site:/var/www/html

