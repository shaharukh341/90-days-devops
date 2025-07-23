day-24-dockerfile-and-multistage/
├── app.js
├── package.json
├── Dockerfile
├── README.md
└── docker-build-demo.sh
# 🏗️ Day 24 – Dockerfile & Multistage Builds

## 🎯 Goal

Learn how to build a Docker image using a Dockerfile and optimize it using multistage builds.

---

## 📦 App Overview

Simple Node.js HTTP server that responds with a success message.

---

## 🛠️ Build Instructions

### 1. Build the Docker Image
docker build -t my-node-app .

### 2. Run the Container
docker run -p 3000:3000 my-node-app

### 3. Test in Browser
Visit: http://localhost:3000