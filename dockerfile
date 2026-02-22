# Defining the base image 
FROM node:20-alpine 

# 1. Install build tools needed for native modules (like mdns2)
# We use 'apk' because this is an Alpine-based image
RUN apk add --no-cache python3 make g++ 

# Create a working directory inside the container
WORKDIR /app

# Copy files to the container
COPY . .

# Install dependencies
RUN npm install --max-old-space-size=512 --jobs 1

# Exposing the port on the container 
EXPOSE 80

# Define the command to run the application
CMD [ "node", "index.js" ]
