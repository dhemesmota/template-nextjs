# base image
FROM node:12.14.0-alpine3.11

RUN apk add --no-cache bash

RUN touch /home/node/.bashrc | echo "PS1='\w\$ '" >> /home/node/.bashrc

RUN npm config set cache /home/node/app/.npm-cache --global

# create & set working directory
WORKDIR /home/node/app

# copy source files
COPY . .

# install dependencies
RUN npm install

# start app
CMD npm run dev