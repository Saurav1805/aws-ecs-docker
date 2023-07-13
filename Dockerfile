FROM ubuntu:22.04
RUN apt update

RUN apt install nginx -y

EXPOSE 80/tcp

CMD ["nginx", "-g", "daemon off;"]
