docker run --rm -e "REDIS_HOST=teste"  -e "REDIS_PORT=99999" -e "REDIS_QUEUE=testqueue" --name r-redis-worker rquintino/r-redis-worker:latest
