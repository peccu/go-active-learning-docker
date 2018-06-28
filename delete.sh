ID=$1
echo "delete from example where id=$ID;" | docker exec -i $(docker-compose ps -q psql) psql -U postgres
