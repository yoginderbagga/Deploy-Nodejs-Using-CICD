FROM node:20-alpine

# Install build tools AND the specific library for dns_sd.h
RUN apk add --no-cache python3 make g++ avahi-dev

WORKDIR /app

# Copy your files (make sure package.json is in your folder!)
COPY . .

# Install with memory limits
RUN npm install --max-old-space-size=512 --jobs 1

EXPOSE 80
CMD ["node", "index.js"]
