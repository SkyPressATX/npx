FROM node:12-alpine

# Create Working Directory
RUN mkdir -p /app

# Set folder permissions for node user
RUN chown -R node:node /app /usr/local/lib/node_modules

# Install git
RUN apk add --no-cache git openssh

# Install npx globally
RUN npm install -g npx

# Set Working Directory
WORKDIR /app

# Use the node user
USER node
