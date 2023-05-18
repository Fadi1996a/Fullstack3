# Use the official lightweight Node.js 16 image.
# https://hub.docker.com/_/node
FROM node:20

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install all dependencies
RUN npm install

# Copy the rest of your app's source code
COPY . .

# Expose port 3000
EXPOSE 3000

# Run the app
CMD ["node", "server.js"]
