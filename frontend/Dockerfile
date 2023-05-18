# Use the official Node.js 16 image as the builder stage.
# https://hub.docker.com/_/node
FROM node:20 AS builder

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install all dependencies
RUN npm install

# Copy the rest of your app's source code
COPY . .

# Build the app using npx to execute the Angular CLI
RUN npx -p @angular/cli ng build --configuration production

# For the run stage, use the official nginx image as a base
# https://hub.docker.com/_/nginx
FROM nginx:1.21

# Remove default nginx static resources
RUN rm -rf /usr/share/nginx/html/*

# Copy the build output to replace the default nginx contents.
COPY --from=builder /usr/src/app/dist/frontend /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/default.conf

# Expose port 4200
EXPOSE 4200

# Run the app
CMD ["nginx", "-g", "daemon off;"]
