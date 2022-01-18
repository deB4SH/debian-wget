FROM debian:bookworm-20211220

RUN set -ex \
    && apt-get clean && apt-get update \
# install wget
    && apt-get install -y wget \
    && rm -rf /var/lib/apt/lists/* 

ENTRYPOINT  ["wget"]