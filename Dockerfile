FROM ubuntu:18.04

RUN apt update && \
    apt install -y software-properties-common apt-transport-https

RUN apt-add-repository -y ppa:certbot/certbot && \
    apt install -y certbot && \
    certbot --version
