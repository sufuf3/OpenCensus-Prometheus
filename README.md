# OpenCensus-Prometheus
> docker-compose with OpenCensus & Prometheus

This is a practice with [OpenCensus](https://opencensus.io) & Prometheus using Docker.  
I built the Dockerfile to exec it.

## Install
```sh
$ git clone https://github.com/sufuf3/OpenCensus-Prometheus.git
$ cd OpenCensus-Prometheus

# Install Docker
$ curl -sSL https://get.docker.com/ | sh
$ sudo usermod -aG docker <username>
$ logout && login
$ docker version

# Install docker-compose
$ sudo curl -L https://github.com/docker/compose/releases/download/1.19.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
$ sudo chmod +x /usr/local/bin/docker-compose
$ docker-compose --version

# Run docker-compose
$ docker-compose up
```
Please access http://localhost:9090/targets & http://localhost:9090/metrics

## Ref
https://medium.com/google-cloud/opencensus-and-prometheus-66812a7503f
