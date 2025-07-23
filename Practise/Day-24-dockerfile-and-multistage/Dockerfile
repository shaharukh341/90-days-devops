# Stage 1: Build (not really needed here, but for demo purposes)
FROM node:18 AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

# Stage 2: Runtime
FROM node:18-slim
WORKDIR /app
COPY --from=builder /app /app
EXPOSE 3000
CMD ["npm", "start"]
