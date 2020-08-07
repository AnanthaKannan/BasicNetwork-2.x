
docker rm -f $(docker ps -aq)

docker volume prune

docker-compose up -d

sleep 5
./createChannel.sh

sleep 2

./deployChaincode.sh