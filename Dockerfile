# Use the official Node.js image as the base image
FROM node:18-alpine

# Set the working directory
WORKDIR ~/hello-world

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy the app source code to the working directory
COPY . .

# Expose the app port
EXPOSE 80

# Start the app
CMD ["npm", "start"]
