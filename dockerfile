FROM node:20-alpine

WORKDIR /app

# Copy the package.json we just created
COPY package*.json ./

# Install the express library
RUN npm install

# Copy the index.js
COPY . .

EXPOSE 80

CMD ["node", "index.js"]
