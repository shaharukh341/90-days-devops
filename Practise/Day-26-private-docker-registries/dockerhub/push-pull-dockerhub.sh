#!/bin/bash

DOCKERHUB_USER=sharukh341
IMAGE_NAME=private-registry-app

echo "👉 Logging into Docker Hub..."
docker login

echo "🔧 Building image..."
docker build -t $IMAGE_NAME ../app

echo "🏷️ Tagging image..."
docker tag $IMAGE_NAME $DOCKERHUB_USER/$IMAGE_NAME:latest

echo "🚀 Pushing to Docker Hub..."
docker push $DOCKERHUB_USER/$IMAGE_NAME:latest

echo "✅ Done!"
