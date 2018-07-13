#!/bin/bash
docker cp $(docker-compose ps -q web):/go/src/ ./go
