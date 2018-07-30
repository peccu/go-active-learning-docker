cat links.txt|egrep -v '^#' |xargs -n 1 ./add-link.sh
