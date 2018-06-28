URL=$1
echo "insert into example (url, label, created_at, updated_at) values ('$URL', 0, now(), now());" | docker exec -i $(docker-compose ps -q psql) psql -U postgres

