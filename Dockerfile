FROM rust:alpine AS build
WORKDIR /src
COPY . .

RUN USER=root apk add libc-dev
RUN cargo build --release

FROM scratch
WORKDIR /
COPY --from=build /src/target/release/albumserver ./serve
COPY --from=build /src/assets/ ./assets/

EXPOSE 3000

ENTRYPOINT ["./serve"]
