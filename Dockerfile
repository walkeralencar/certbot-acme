FROM ubuntu:18.04

RUN apt update && \
    apt install -y software-properties-common apt-transport-https

RUN apt-add-repository -y ppa:certbot/certbot && \
    apt install -y certbot

ADD acme-dns-auth.py /etc/letsencrypt/

RUN chmod +x  /etc/letsencrypt/acme-dns-auth.py