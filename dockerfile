FROM node:alpine

WORKDIR /apps

COPY ./package.json ./package.json

RUN npm install

COPY ./ ./

RUN npm run build

EXPOSE 3000

CMD [ "npm", "run", "start" ]