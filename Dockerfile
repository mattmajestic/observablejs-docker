# Use an official Node.js runtime as the base image
FROM node:alpine

# Set the working directory in the container
WORKDIR /app

# Install http-server globally
RUN npm install -g http-server

# Copy static assets from docs/dist directory
COPY docs/dist .

# Expose the port the app runs on
EXPOSE 8080

# Start http-server when the container starts
CMD ["http-server", "-p", "8080"]