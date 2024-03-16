FROM rust:bookworm as build

WORKDIR /usr/src/melee

COPY . .

RUN cargo build --release

FROM debian:bookworm-slim

COPY --from=build /usr/src/melee/target/release/melee_server .

CMD [ "./melee_server" ]

EXPOSE 8080