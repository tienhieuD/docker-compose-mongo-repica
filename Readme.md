# Deploying a MongoDB Cluster with Docker

- https://www.mongodb.com/compatibility/deploying-a-mongodb-cluster-with-docker

## How to run

1. Create data folder
```bash
mkdir dataprod1
mkdir dataprod2
mkdir dataprod3
```

2. Up
```bash
docker compose -f docker-compose.mongo.3repica.yml up -D
```

3. Init cluster
```bash
docker exec mongo1 /scripts/mongo_setup.sh
```

Done, gud luk!
