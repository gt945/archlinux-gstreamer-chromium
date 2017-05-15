FROM base/archlinux

MAINTAINER Tao Guo <guotao945@gmail.com>

RUN pacman -Sy --noconfirm \
        sudo \
        git \
        automake \
        bash-completion \
        keychain \
        gcc \
        grep \
        sed \
        vim \
        tmux \
        autoconf \
        which \
        pkg-config \
        gettext \
        tar \
        libtool \
        bison \
        flex \
        gtk-doc \
        make \
        yasm \
        alsa-lib \
        dos2unix \
        pulseaudio \
        xterm \
        libxv \
        procps-ng \
        psmisc \
        gdb


RUN pacman -Scc --noconfirm

CMD /bin/bash
