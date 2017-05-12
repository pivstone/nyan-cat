FROM alpine:latest


MAINTAINER pivstone<pivstone@gmail.com> 


RUN apk --update add nginx && mkdir /run/nginx 
COPY nyan-cat /usr/share/nginx/html

COPY default.conf /etc/nginx/conf.d/
EXPOSE 80

CMD ["nginx", "-g", "'daemon off;'"]
