FROM joseluisq/static-web-server:2
WORKDIR /
COPY ./assets/ ./public/
ENV SERVER_PORT=3000
ENV SERVER_CORS_ALLOW_ORIGINS="*"

EXPOSE 3000
