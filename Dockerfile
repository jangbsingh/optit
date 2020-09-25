FROM prom/prometheus
MAINTAINER jb
COPY /opt/prometheus.yml /etc/prometheus/prometheus.yml
EXPOSE 9090
