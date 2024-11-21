# FROM node:8.1.0-alpine
FROM node:18

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY . /usr/src/app/
RUN npm install 
RUN npm run compile:sass
RUN npm run build

ENTRYPOINT ["npm", "run", "start"]
