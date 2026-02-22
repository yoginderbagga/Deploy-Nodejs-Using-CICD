# Defining the base image
FROM node:20-bookworm 

# Install the system library needed specifically for mdns2
RUN apt-get update && apt-get install -y \
    libavahi-compat-libdnssd-dev \
    && rm -rf /var/lib/apt/lists/*

# Create a working directory
WORKDIR /app

# Copy files
COPY . .

# Install dependencies 
RUN npm install --max-old-space-size=512

# Expose the port
EXPOSE 80

# Run the app
CMD [ "node", "index.js" ]
