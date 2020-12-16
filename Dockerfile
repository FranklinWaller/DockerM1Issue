FROM --platform=linux/amd64 ubuntu

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y cmake
RUN apt-get install -y g++
RUN apt-get install -y pkg-config
RUN apt-get install -y libssl-dev
RUN apt-get install -y curl
RUN apt-get install -y llvm
RUN apt-get install -y clang
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y

ENV RUSTUP_HOME=$HOME/.rustup \
    CARGO_HOME=$HOME/.cargo \
    PATH=$HOME/.cargo/bin:$PATH