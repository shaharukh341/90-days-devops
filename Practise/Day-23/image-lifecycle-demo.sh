#!/bin/bash

# Pull base image
docker pull ubuntu

# Run and install curl
CID=$(docker run -dit ubuntu bash)
docker exec -it $CID apt update
docker exec -it $CID apt install -y curl

# Commit container to new image
docker commit $CID ubuntu-with-curl

# Run the new image
docker run --rm ubuntu-with-curl curl --version

# Cleanup
docker stop $CID
docker rm $CID
