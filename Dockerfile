FROM alpine
MAINTAINER Alexis Ducastel <alexis@ducastel.net>

RUN apk --update add socat && rm -rf /var/cache/apk

EXPOSE 2375/tcp

CMD ["socat","-d","-d","TCP4-LISTEN:2375,fork","UNIX-CONNECT:/var/run/docker.sock"]
