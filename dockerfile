# Defining the base image 
FROM node:20-alpine 

# Create a working directory inside the container
WORKDIR /app

# Copy files to the container
COPY . .

# Install dependencies with strict memory limits
# --jobs 1 reduces parallel processing to save RAM
RUN npm install --max-old-space-size=512 --jobs 1

# Exposing the port on the container 
EXPOSE 80

# Define the command to run the application
CMD [ "node", "index.js" ]
