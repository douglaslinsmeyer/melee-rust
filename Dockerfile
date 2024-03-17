FROM debian:bookworm-slim

COPY ./target/release/melee_server .

CMD [ "./melee_server" ]

EXPOSE 80