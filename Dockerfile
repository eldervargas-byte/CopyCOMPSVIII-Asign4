<<<<<<< HEAD
# Use a Node.js base image with version 16
=======
# Using a Node.js base image 
>>>>>>> 16e894fe3203695a773db1ade6547d927ff4a6c9
FROM node:16

# Set the working directory inside the container
WORKDIR /usr/src/app

<<<<<<< HEAD
# Copy package.json to install application dependencies
COPY package.json ./

# Install the dependencies with npm install
RUN npm install

# Copy all the application files into the container
COPY . .

# Expose port 3000 to the host network
EXPOSE 3000

# Start the application with the command npm start
=======
# Copy package.json and package-lock.json (if available) to install dependencies
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy all the remaining application files from the directory
COPY . .

# Expose port 3000 
EXPOSE 3000

#  the npm start command
>>>>>>> 16e894fe3203695a773db1ade6547d927ff4a6c9
CMD ["npm", "start"]
