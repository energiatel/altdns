FROM ubuntu:latest
MAINTAINER MD matteo@disetti.it
RUN apt-get -y update && \
    apt-get -y dist-upgrade
RUN apt-get install -y \
        curl \
        tofrodos \
        build-essential \
        git \
        libpcap-dev \
        libxml2-dev \
        libxslt1-dev \
        python-requests \
        python-dnspython \
        python-setuptools \
        python-dev \
        python-pip \
        wget \
        zlib1g-dev && apt-get clean
RUN pip install --upgrade pip

RUN git clone https://github.com/infosec-au/altdns.git
RUN pip install -r /altdns/requirements.txt
RUN pip install py-altdns

ENTRYPOINT ["altdns"]
CMD ["-h"]
