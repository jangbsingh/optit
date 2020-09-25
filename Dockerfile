FROM prom/prometheus
MAINTAINER jb
WORKDIR /opt/
COPY /opt/prometheus.yml /etc/prometheus/prometheus.yml
EXPOSE 9090
