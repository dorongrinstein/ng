rm -rf ./proxy/certs
mkdir ./proxy/certs
cp ./certs/dist/* ./proxy/certs
docker-compose build
