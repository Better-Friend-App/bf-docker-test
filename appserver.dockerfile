# creates a Node.JS server and copies code base directory to the server
FROM node:12

# copies the current directory to server
WORKDIR /app/
COPY . .

# install app from copied diretory
RUN npm install
RUN npm i -g pm2