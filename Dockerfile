FROM ubuntu:precise

RUN apt-get update && apt-get install -yq \
    curl wget \
    sudo \
    lsb-release \
    apt-src \
    build-essential zlib1g-dev libpcre3 libpcre3-dev unzip

ADD build /build

CMD ["bash", "/build"]
