FROM debian:stable-20200607-slim

RUN apt-get update \
&& apt-get upgrade -yqq --no-install-recommends \
&& apt-get install -yqq --no-install-recommends \
procps \
tar \
git \
wget \
gnupg \
dirmngr \
libssl1.1 \
libsasl2-dev \
libldap2-dev \
xz-utils \
ca-certificates \
&& apt-get clean
