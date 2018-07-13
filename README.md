# confluence-docker-compose
Run confluence with docker-compose

## Create a network
To avoid using default network 172.16.0.0/16
```
docker network create --driver bridge confluence_default --subnet 10.0.1.0/24
```

## Build docker image when runing docker-compose
```
docker-compose up --build -d
```
