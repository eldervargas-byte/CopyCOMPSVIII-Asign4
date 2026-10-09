# Using a Node.js base image 
FROM node:16

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available) to install dependencies
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy all the remaining application files from the directory
COPY . .

# Expose port 3000 
EXPOSE 3000

#  the npm start command
CMD ["npm", "start"]
