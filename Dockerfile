FROM rust:1.49.0

WORKDIR /usr/src/app

VOLUME [ "/xml" ]

COPY . .

RUN cargo build --release --locked

RUN cargo install --path .

CMD ["xunit-repo-client"]
