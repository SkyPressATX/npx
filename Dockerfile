FROM node:12-alpine

# Create Working Directory
RUN mkdir -p /app && \
  chown node:node /app

# Set Working Directory
WORKDIR /app

# Install npx globally
RUN su node && \
  npm install -g npx

# Use the node user
USER node
