FROM ubuntu:18.04

ENV USER_NAME pokypi
ENV WORKDIR /home/$USER_NAME

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y gawk wget git-core \
    diffstat unzip texinfo gcc-multilib build-essential \
    chrpath socat cpio python python3 python3-pip \
    python3-pexpect xz-utils debianutils iputils-ping \
    libsdl1.2-dev xterm tar locales

RUN rm /bin/sh && ln -s bash /bin/sh

RUN locale-gen en_US.UTF-8 && update-locale LC_ALL=en_US.UTF-8 \
    LANG=en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

ARG host_uid=1001
ARG host_gid=1001
RUN groupadd -g $host_gid $USER_NAME && \
    useradd -g $host_gid -m -s /bin/bash -u $host_uid $USER_NAME

USER $USER_NAME

RUN mkdir -p $WORKDIR

ENV PATH="$WORKDIR/poky/bitbake/bin:${PATH}"

VOLUME ["$WORKDIR"]

WORKDIR $WORKDIR
