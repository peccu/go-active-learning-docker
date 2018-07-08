#!/bin/bash
function usage(){
    echo "Usage: add-link.sh url [label]"
    echo
    echo "Options:"
    echo "  label   0 : non labeled [default]"
    echo "          1 : positive label"
    echo "         -1 : negative label"
}
function main(){
    URL=$1
    LABEL=0
    if [ "$#" -eq 2 ]
    then
        LABEL=$2
    fi

    echo "insert into example (url, label, created_at, updated_at) values ('$URL', '$LABEL', now(), now());" | docker exec -i $(docker-compose ps -q psql) psql -U postgres
}

if [ "$#" -lt 1 ]
then
     usage
     exit 1
fi
main "$@"
