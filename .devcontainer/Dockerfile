FROM mcr.microsoft.com/devcontainers/rust:1-1-bookworm

USER root

RUN apt update && apt install -y \
    clang \
    libclang-dev \
    build-essential \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

ENV LIBCLANG_PATH=/usr/lib/llvm-14/lib

USER vscode

# Target architectures:
# "thumbv6m-none-eabi"         Cortex-M0 and Cortex-M0+
# "thumbv7m-none-eabi"         Cortex-M3
# "thumbv7em-none-eabi"        Cortex-M4 and Cortex-M7 (no FPU)
# "thumbv7em-none-eabihf"      Cortex-M4F and Cortex-M7F (with FPU)
# "thumbv8m.base-none-eabi"    Cortex-M23
# "thumbv8m.main-none-eabi"    Cortex-M33 (no FPU)
# "thumbv8m.main-none-eabihf"  Cortex-M33 (with FPU)
RUN rustup target add thumbv7em-none-eabihf

RUN cargo install rmkit flip-link cargo-make

RUN echo 'export LIBCLANG_PATH=/usr/lib/llvm-14/lib' >> ~/.bashrc

WORKDIR /workspace
