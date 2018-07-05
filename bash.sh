docker-compose exec web bash -c "export COLUMNS=$(tput cols); export LINES=$(tput lines); exec bash"
