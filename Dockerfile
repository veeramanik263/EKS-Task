# Use the official Node.js image from the Docker Hub
FROM node:18

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port on which the app will run
EXPOSE 3000

# Run the application
CMD ["node", "app.js"]
