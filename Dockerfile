FROM ubuntu:16.04
MAINTAINER Samina Fu <sufuf3@gmail.com>
RUN apt-get update         && \
    apt-get upgrade -y     && \
    apt-get install -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" \
        locales               \
        login                 \
        passwd                \
        bsdutils              \
        file                  \
        ssh                   \
        wget                  \
        sudo                  \
        htop                  \
        dstat                 \
        vim                   \
        tmux                  \
        tree                  \
        curl                  \
        mtr-tiny              \
        git                   \
        nmap                  \
        apt-file              \
        unzip                 \
        tcpdump               \
        iftop                 \
        iotop                 \
        xterm                 \
        jq                    \
        iperf                 \
        whois                 \
        lsof                  \
        ufw                   \
        make                  \
        traceroute            \
        libc6-dev             \
        software-properties-common \
        build-essential       \
        bash-completion       && \
    apt clean

RUN add-apt-repository ppa:longsleep/golang-backports -y
RUN apt-get update
RUN apt-get install golang-go -y

RUN DIR="/tmp/OpenCensus"
RUN mkdir -p ${DIR}/go
RUN export GOPATH=${DIR}/go
RUN export PATH=${PATH}:${GOPATH}/bin
RUN go get -u go.opencensus.io
WORKDIR /code
COPY prometheus.go prometheus.go
CMD ["go", "run prometheus.go"]

