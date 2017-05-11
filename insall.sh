# Clone 'redis-manager-service' repository
git clone https://github.com/barend-erasmus/redis-manager-db.git

# Change to cloned directory
cd ./redis-manager-db

# Build docker image
docker build --no-cache -t redis-manager-db-seed ./

# Run docker as deamon
docker run -d --name redis-manager-db-seed --link redis-manager-db-seed:mongo -t redis-manager-db-seed