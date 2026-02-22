# Declare your base image
FROM node:20-alpine
# make a dir in container
WORKDIR /app
# copy files to container
COPY . /app
RUN npm install 
# expose the port to the container
EXPOSE 80
# command to run the app
CMD ["node", "index.js"]

