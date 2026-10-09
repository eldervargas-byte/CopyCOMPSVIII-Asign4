# Use a Node.js base image with version 16
FROM node:16

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json to install application dependencies
COPY package.json ./

# Install the dependencies with npm install
RUN npm install

# Copy all the application files into the container
COPY . .

# Expose port 3000 to the host network
EXPOSE 3000

# Start the application with the command npm start
CMD ["npm", "start"]
