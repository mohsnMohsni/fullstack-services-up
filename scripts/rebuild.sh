(cd ../pweb-f || exit; git pull origin main);
(cd ../pweb-b || exit; git pull origin main);
git pull origin main;

sudo docker-compose up --build -d;

docker image rm -f $(docker images -q --filter "dangling=true");

docker container prune -f;

docker network prune -f;
