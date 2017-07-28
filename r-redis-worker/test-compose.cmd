docker-compose up -d 
docker-compose scale rworker=10
rscript testCluster.r
