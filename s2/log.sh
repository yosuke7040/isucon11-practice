#!/bin/bash

set -exu -o pipefail

cd $(dirname $0)

pt-query-digest /var/log/mysql/mysql-slow.log > ./logs/pt-digest/$(date +%Y%m%d%H%M%S).log
