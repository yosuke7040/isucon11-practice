#!/bin/bash

set -exu -o pipefail

cd $(dirname $0)

git fetch
git reset --hard origin/master
cd go
go build -o isucondition main.go
sudo systemctl restart isucondition.go.service
