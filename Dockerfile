FROM prom/prometheus
MAINTAINER jb
COPY prometheus.yml /etc/prometheus/prometheus.yml
EXPOSE 9090
TAG jb_prometheus:v0.1
