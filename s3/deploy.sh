#!/bin/bash

set -exu -o pipefail

cd $(dirname $0)

#sudo cp -f ./etc/mysql/mariadb.conf.d/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
#sudo cp -f ./etc/nginx/nginx.conf /etc/nginx/nginx.conf
# sudo cp -f ./etc/nginx/sites-available/isucondition.conf /etc/nginx/sites-available/isucondition.conf

#git fetch
#git reset --hard origin/main
cd ../go
go build -o isucondition main.go
sudo systemctl restart isucondition.go.service
#sudo systemctl restart nginx
#sudo systemctl restart mariadb
