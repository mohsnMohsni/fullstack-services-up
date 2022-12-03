(cd ../pweb-f; git pull origin main);
(cd ../pweb-b; git pull origin main);
git pull origin main;
sudo docker-compose up --build -d;
docker image rm -f $(docker images -q --filter "dangling=true");
