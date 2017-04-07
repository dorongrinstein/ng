FROM mhart/alpine-node:latest

#bash is used to run npm test inside the container
#RUN apk update && apk upgrade && apk --update add bash && rm -rf /var/cache/apk/*

WORKDIR /src
ADD . .

#RUN apk --update add git

RUN npm install

EXPOSE 80
CMD ["node", "index.js"]

