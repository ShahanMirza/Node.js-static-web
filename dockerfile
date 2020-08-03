FROM node:10-alpine
ONBUILD RUN "apt-get update && apt-get clean"
ONBUILD RUN npm install -g express
ONBUILD RUN npm install -g nodemon

# Create app directory
ONBUILD RUN mkdir -p /usr/src/app
ONBUILD WORKDIR /usr/src/app

EXPOSE 9000
ONBUILD COPY package*.json ./

ONBUILD RUN npm install
# #RUN mkdir \app
# WORKDIR /app

# ONBUILD COPY package.json package.json
# ONBUILD RUN npm install
# ONBUILD COPY . /app
# Build the app
#ONBUILD RUN npm run build

# Specify port app runs on
# ONBUILD EXPOSE 8080
#CMD [ "npm.cmd", "start" ]
ONBUILD CMD [ "node", "app" ]
#RUN mkdir -p 'C:\Users\muhammad.shahan\Desktop\Learn JS\node_modules' && chown -R node:node 'C:\Users\muhammad.shahan\Desktop\Learn JS'

#WORKDIR /home/node/app

#COPY package*.json ./

#USER node

#RUN npm install

#COPY --chown=node:node . .

#EXPOSE 8080

#CMD [ "node", "app.js" ]