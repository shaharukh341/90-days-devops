day-24-dockerfile-and-multistage/
├── Dockerfile
├── app.js (or index.js)
├── package.json
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
```bash
docker build -t my-node-app .
