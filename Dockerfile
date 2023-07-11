FROM ubuntu

WORKDIR /express-app

COPY package.json .

RUN apt install npm -y

RUN apt install nginx -y

COPY . .

EXPOSE 3000

CMD [ "node", "index.js" ]
