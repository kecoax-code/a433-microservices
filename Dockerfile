# Use Node.js version 16 as the base image
FROM node:16-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the rest of the source code to the working directory
COPY . /app

# Install project dependencies
RUN npm cache clean --force
RUN npm install

# Expose the port that the application listens on
EXPOSE 3001

# Define the command to run when the container starts
CMD ["npm", "start"]
