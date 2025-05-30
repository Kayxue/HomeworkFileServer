FROM joseluisq/static-web-server:2
WORKDIR /
COPY ./assets ./assets
ENV SERVER_PORT=3000
ENV SERVER_CORS_ALLOW_ORIGINS="*"
ENV SERVER_DIRECTORY_LISTING=true
ENV SERVER_ROOT="./assets"

EXPOSE 3000
