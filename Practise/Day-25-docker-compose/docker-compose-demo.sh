#!/bin/bash

echo "📦 Building and starting containers..."
docker-compose up -d --build

echo "🌐 Visit http://localhost:3000 to test MongoDB connection."

echo "🔍 Checking logs..."
docker-compose logs app
