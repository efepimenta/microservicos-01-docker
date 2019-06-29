FROM nginx:1.15.0-alpine

RUN rm /etc/nginx/conf.d/default.conf

RUN apk update && apk add --no-cache bash shadow curl

RUN usermod -u 1000 nginx && \
    groupmod -g 1000 nginx

RUN curl -sfL $(curl -s https://api.github.com/repos/powerman/dockerize/releases/latest | grep -i /dockerize-$(uname -s)-$(uname -m)\" | cut -d\" -f4) | install /dev/stdin /usr/local/bin/dockerize

WORKDIR /var/www

#ADD nginx_conf.tmpl /tmp/nginx_conf.tmpl

#ENV SERVICE_NAME=app
#ENV SERVICE_PORT=9000
#CMD dockerize -template ./nginx.conf.tmpl:/etc/nginx/nginx.conf

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "'daemon off;'"]
