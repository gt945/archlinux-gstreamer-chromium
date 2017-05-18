FROM base/archlinux

MAINTAINER Tao Guo <guotao945@gmail.com>

RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8   

RUN pacman -Sy --noconfirm \
        base-devel \
        git \
        bash-completion \
        keychain \
        vim \
        tmux \
        tar \
        gtk-doc \
        yasm \
        dos2unix \
        pulseaudio \
        xterm \
        libxv \
        procps-ng \
        psmisc \
        gtk3 \
        intltool \
        json-glib \
        git-annex \
        gperf \
        gdb

RUN pacman -Scc --noconfirm

CMD /bin/bash
