FROM node:20-bookworm-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    make \
    g++ \
    libavahi-compat-libdnssd-dev \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy EVERYTHING from your current folder to /app
# We use ./ instead of . to be extra clear
COPY . ./

# List files just to be sure (this will show in your logs)
RUN ls -la

# Now run install
RUN npm install --max-old-space-size=450 --jobs 1

EXPOSE 80
CMD [ "node", "index.js" ]
