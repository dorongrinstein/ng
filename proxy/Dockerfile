FROM nginx:alpine

RUN rm /etc/nginx/conf.d/*
RUN mkdir /etc/nginx/certs
COPY certs/* /etc/nginx/certs/
COPY proxy.conf /etc/nginx/conf.d
RUN mkdir /doron
COPY index.html /doron
