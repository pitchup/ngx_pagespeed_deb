FROM ubuntu:latest

RUN apt-get update && apt-get install -yq \
    curl wget \
    sudo \
    build-essential zlib1g-dev libpcre3 libpcre3-dev unzip

#RUN apt-get update && apt-get install -yq \
#    sudo \
#    lsb-release \
#    build-essential \
#    dpkg-dev zlib1g-dev libpcre3 libpcre3-dev unzip checkinstall

#ADD build /build

#CMD ["bash", "/build"]

ENV OPENSSL_VERSION=${OPENSSL_VERSION:-1.0.2j}

ADD https://ngxpagespeed.com/install /install

RUN bash /install -n latest -y -a '--with-http_ssl_module --with-http_v2_module --with-http_stub_status_module --with-http_realip_module'
