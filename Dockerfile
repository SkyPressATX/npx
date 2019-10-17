FROM node:12-alpine

# Create Working Directory
RUN mkdir -p /app

# Set folder permissions for node user
RUN chown -R node:node /app

# Install git
RUN apk --no-cache add \
  git openssh python make g++ make gcc libgcc libstdc++ linux-headers make

# Install global node modules
RUN npm install --quite -g node-gyp npx

# Set Working Directory
WORKDIR /app

# Use the node user
USER node
