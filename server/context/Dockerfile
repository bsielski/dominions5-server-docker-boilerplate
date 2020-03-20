FROM ubuntu:focal
RUN apt-get update && apt-get install -y \
    libglu1-mesa \
    libsdl2-2.0-0 \
&& rm -rf /var/lib/apt/lists/*
ARG USER_ID
ARG GROUP_ID
RUN addgroup --gid $GROUP_ID gamemaster
RUN adduser --disabled-password --gecos '' --uid $USER_ID --gid $GROUP_ID gamemaster
USER gamemaster
WORKDIR /home/gamemaster
