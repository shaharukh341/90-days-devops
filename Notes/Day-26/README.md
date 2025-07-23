day-26-private-docker-registries/
├── app/
│   ├── app.js
│   ├── package.json
│   └── Dockerfile
├── dockerhub/
│   └── push-pull-dockerhub.sh
├── ghcr/
│   └── push-pull-ghcr.sh
└── README.md


# 🏢 Day 26 – Private Docker Registries

## ✅ Goals
- Push/pull Docker images using private registries: Docker Hub & GHCR
- Secure login with credentials / Personal Access Tokens (PAT)

---

## 📦 App Overview
Simple Node.js HTTP app inside a Docker container.

## 🔐 Docker Hub Instructions

```bash
cd dockerhub
./push-pull-dockerhub.sh
