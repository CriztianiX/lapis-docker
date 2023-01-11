FROM openresty/openresty:1.21.4.1-alpine-fat

RUN apk update && apk add openssl-dev

RUN luarocks install lapis

RUN mkdir -p /srv/app 

WORKDIR /srv/app

ENTRYPOINT ["lapis"] 

CMD ["server", "production"]
