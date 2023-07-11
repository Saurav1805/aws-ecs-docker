FROM node:alpine

WORKDIR /express-app

COPY package.json .

RUN npm install

RUN nginx install -y

COPY . .

EXPOSE 3000

CMD [ "node", "index.js" ]
