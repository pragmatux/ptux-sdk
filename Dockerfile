FROM debian:wheezy
MAINTAINER rkuester@insymbols.com

ARG DEBIAN_FRONTEND=noninteractive

RUN echo "deb http://deb.debian.org/debian wheezy-backports main" >/etc/apt/sources.list.d/backports.list && \
    echo "deb-src http://deb.debian.org/debian wheezy-backports main" >>/etc/apt/sources.list.d/backports.list && \
    echo "deb http://packages.pragmatux.org/sdk wheezy main" >/etc/apt/sources.list.d/pragmatux.list && \
    echo "deb-src http://packages.pragmatux.org/sdk wheezy main" >>/etc/apt/sources.list.d/pragmatux.list && \
    echo "deb http://packages.pragmatux.org/device wheezy main" >>/etc/apt/sources.list.d/pragmatux.list && \
    echo "deb-src http://packages.pragmatux.org/device wheezy main" >>/etc/apt/sources.list.d/pragmatux.list && \
    apt-get update && \
    apt-get install \
        --yes \
        --quiet \
        --no-install-recommends \
        --allow-unauthenticated \
        ptux-sdk
