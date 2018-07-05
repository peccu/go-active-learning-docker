echo 'update example set label = '$1' where id = '$2';' | docker exec -i $(docker-compose ps -q psql) psql -U postgres
