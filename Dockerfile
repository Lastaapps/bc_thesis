FROM rust:1.82-bullseye AS builder
ARG CARGO_NET_GIT_FETCH_WITH_CLI=true
RUN rustup target add x86_64-unknown-linux-musl
RUN cargo install --git https://github.com/latex-lsp/texlab --locked \
    --target=x86_64-unknown-linux-musl

FROM texlive/texlive:latest-full-doc-src
COPY --from=builder /usr/local/cargo/bin/texlab /usr/local/bin/texlab
