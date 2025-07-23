#!/bin/bash

echo "🔨 Building Docker image..."
docker build -t my-node-app .

echo "🚀 Running container on port 3000..."
docker run -d -p 3000:3000 --name node-container my-node-app

echo "🌐 Visit http://localhost:3000 to view the app."
