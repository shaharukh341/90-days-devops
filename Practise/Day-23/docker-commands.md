
---

### 📄 `docker-commands.txt`

```txt
# Pull Ubuntu image
docker pull ubuntu

# List images
docker images

# Run interactive container
docker run -it ubuntu bash

# Inside container
apt update && apt install -y curl

# Exit and commit container to a new image
docker ps -a
docker commit <container-id> ubuntu-with-curl
docker images

# Run new container from committed image
docker run -it ubuntu-with-curl curl --version

# Clean up
docker stop <id>
docker rm <id>
docker rmi <image-id>
