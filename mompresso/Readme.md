
# Command to create a image from docker file 
docker build -t dave_flask:dev .
docker build -t dave_slim:dev .

Running a particluar image in docker swarm with 2 instannces

#Command to initialize a swarm on master node

docker swarm init

#the above command will provide a command to which needs to be run at worker nodes to join the swarm

docker swarm join --token SWMTKN-1-4ahe24rbj2qngl8eshxx15ln2qdnvc31lg7svhgy0lznykr6jo-8xshal4x0u37lui6tqczovu7f IP:PORT

# on master node below command needs to be run 

docker service create --name test_name --publish published=80,target=5000 --replicas=2 image_name

docker service create --name test_name --publish published=80,target=80 --replicas=2 image_name





