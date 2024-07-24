# Use an official Node.js runtime as the base image for the build stage
FROM node:18 AS build

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Build the React application
RUN npm run build

# Use an official Nginx image to serve the built app
FROM nginx:alpine

# Set the working directory for the Nginx server
WORKDIR /usr/share/nginx/html

# Copy the built React application from the previous stage
COPY --from=build /app/build .

# Expose port 8018 to the outside world
EXPOSE 8018

# Define the default command
CMD ["nginx", "-g", "daemon off;"]
