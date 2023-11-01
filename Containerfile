# podman build -t rsyslog -f Containerfile .
# podman tag rsyslog quay.io/kenmoini/rsyslog:latest
# podman push quay.io/kenmoini/rsyslog:latest

FROM registry.redhat.io/rhel8/rsyslog:8.8-14.1697647527

RUN dnf install -y rsyslog-mmkubernetes rsyslog-mmjsonparse rsyslog-mmfields rsyslog-mmnormalize rsyslog-elasticsearch

