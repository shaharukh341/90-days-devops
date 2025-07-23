#!/bin/bash

GHCR_USER=your_github_username
IMAGE_NAME=private-registry-app
TOKEN=ghp_your_github_pat_here

echo "👉 Logging into GHCR..."
echo $TOKEN | docker login ghcr.io -u $GHCR_USER --password-stdin

echo "🔧 Building image..."
docker build -t $IMAGE_NAME ../app

echo "🏷️ Tagging for GHCR..."
docker tag $IMAGE_NAME ghcr.io/$GHCR_USER/$IMAGE_NAME:latest

echo "🚀 Pushing to GHCR..."
docker push ghcr.io/$GHCR_USER/$IMAGE_NAME:latest

echo "✅ Done!"
