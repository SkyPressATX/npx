FROM node:11-alpine

# Create Working Directory
RUN mkdir -p /app

# Set folder permissions for node user
RUN chown -R node:node /app

# Install git
RUN apk --no-cache add --virtual native-deps \
  git openssh python make g++ make gcc libgcc libstdc++ linux-headers make && \
  npm install --quite node-gyp npx -g && \
  npm install --quite && \
  apk del native-deps

# Set Working Directory
WORKDIR /app

# Use the node user
USER node
