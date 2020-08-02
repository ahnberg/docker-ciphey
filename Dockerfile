# Builds a docker container with the automated decryption tool from https://github.com/Ciphey/Ciphey
# To build:
# $ docker build -t ahnberg/ciphey:latest .

FROM phusion/baseimage:master-amd64
CMD ["/sbin/my_init"]

RUN set -x \
 && apt update -qq \
 && apt install -qqy --no-install-recommends python3-pip \
 && apt clean \
 && rm -rf /var/lib/apt/lists/* \
 && pip3 -qqq install ciphey \
 && set +x
