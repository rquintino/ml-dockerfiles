docker stack deploy --compose-file docker-compose-swarm.yml rcluster

docker stack  services rcluster

docker service scale rcluster_rworker=20