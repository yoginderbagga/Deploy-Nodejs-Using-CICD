Dockerfile
# Defining the base image 
FROM node:20-alpine 

# Create a working directory inside the container
WORKDIR /app

# Copy ALL files from your current directory to the /app directory in the container
# Using "." instead of "/app/" is cleaner because WORKDIR already set the context
COPY . .

# Install the dependencies
# (Since we are in /app, npm will find package.json right here)
RUN npm install

# Exposing the port on the container 
EXPOSE 80

# Define the command to run the application
CMD [ "node", "index.js" ]
