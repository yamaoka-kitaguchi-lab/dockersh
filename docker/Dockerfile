FROM ubuntu:focal
LABEL maintainer "Taichi MIYA <miya@net.ict.e.titech.ac.jp>"

ARG USER=all
ARG HOME=/home/all

ENV DEBIAN_FRONTEND=noninteractive
ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV TZ Asia/Tokyo

RUN apt-get update && \
    apt-get install -y \
        gosu locales tzdata build-essential \
        coreutils moreutils dnsutils net-tools iproute2 iputils-ping iputils-arping traceroute curl wget \
        openssh-client telnet bash zsh csh fish tmux screen vim neovim && \
    apt-get clean && \
    rm -rf /var/lib/apt/list/*

RUN locale-gen en_US.UTF-8
RUN useradd -m -d $HOME -s /usr/bin/fish $USER

ADD entrypoint.sh /sbin/entrypoint.sh
RUN chmod +x /sbin/entrypoint.sh

USER $USER
WORKDIR $HOME

ENTRYPOINT ["/sbin/entrypoint.sh"]
CMD ["/usr/bin/fish"]
