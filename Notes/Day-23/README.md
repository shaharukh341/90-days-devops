# 📦 Day 23 – Docker Images & Containers

## 🎯 Goal

Understand how Docker images are built, how containers are created and run from them, and how to manage image/container lifecycle using Docker CLI.

---

## 🧠 Key Concepts

| Term        | Description                                                                 |
|-------------|-----------------------------------------------------------------------------|
| Image       | Read-only blueprint for containers (OS, app, dependencies)                 |
| Container   | A running instance of an image                                              |
| Dockerfile  | File used to define how images are built                                   |

---

## 🔧 Commands Practiced

### 📥 Pull and Inspect Images
```bash
docker pull ubuntu
docker images
docker history ubuntu
