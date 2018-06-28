echo 'select * from example;' | docker exec -i $(docker-compose ps -q psql) psql -U postgres
