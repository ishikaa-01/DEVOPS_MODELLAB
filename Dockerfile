# Use official Node.js image as base image
FROM node:16

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json for dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port to allow external access
EXPOSE 3000

# Command to run the app
CMD ["node", "app.js"]
