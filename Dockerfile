FROM node:carbon
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
RUN npm i npm@latest -g
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]
