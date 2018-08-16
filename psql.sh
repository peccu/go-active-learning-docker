#!/bin/bash
SCRIPT_DIR=$(cd $(dirname "${BASH_SOURCE:-$0}"); pwd)
cd $SCRIPT_DIR/compose
echo 'show db	\l'
echo 'use db	\c [dbname]'
echo 'show tables	\dt'
echo 'describe table	\d [tablename]'
echo 'cf. https://qiita.com/H-A-L/items/fe8cb0e0ee0041ff3ceb'
echo 'cf. https://gist.github.com/Kartones/dd3ff5ec5ea238d4c546'
docker-compose exec psql bash -c "export COLUMNS=$(tput cols); export LINES=$(tput lines); exec psql -U postgres -d postgres"
