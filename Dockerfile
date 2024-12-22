ARG from=nvidia/opengl:1.2-glvnd-devel-ubuntu20.04
# ARG from=ubuntu:20.04

FROM ${from}

WORKDIR /app

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && apt-get install -y --no-install-recommends \
        #   From Nvidia's example
        pkg-config \
        libglvnd-dev libglvnd-dev:i386 \
        libgl1-mesa-dev libgl1-mesa-dev:i386 \
        libegl1-mesa-dev libegl1-mesa-dev:i386 \
        libgles2-mesa-dev libgles2-mesa-dev:i386  \
        # OpenGl Related
        
        #   My own
        build-essential \
        cmake \
        git && \
    rm -rf /var/lib/apt/lists/*

