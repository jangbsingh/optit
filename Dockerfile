FROM prom/prometheus
MAINTAINER jb
COPY prometheus.yml /etc/prometheus/prometheus.yml
EXPOSE 9092
