# Stage 1: Build
FROM node:16 AS builder

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

# Stage 2: Serve
FROM nginx:alpine

COPY --from=builder /app/build /usr/share/nginx/html

EXPOSE 8018

CMD ["nginx", "-g", "daemon off;"]
