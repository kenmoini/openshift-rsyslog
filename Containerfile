# Log into the Red Hat Registry: https://access.redhat.com/terms-based-registry/accounts
# podman login -u `oc whoami` -p `oc whoami --show-token` default-route-openshift-image-registry.apps.mega-sno.d70.lab.kemo.network:443
# podman build -t rsyslog -f Containerfile .
# podman tag rsyslog default-route-openshift-image-registry.apps.mega-sno.d70.lab.kemo.network:443/openshift-logging/rsyslog-enhanced:latest
# podman push default-route-openshift-image-registry.apps.mega-sno.d70.lab.kemo.network:443/openshift-logging/rsyslog-enhanced:latest

FROM registry.redhat.io/rhel8/rsyslog:8.8-14.1697647527

RUN dnf install -y rsyslog-mmkubernetes rsyslog-mmjsonparse rsyslog-mmfields rsyslog-mmnormalize rsyslog-elasticsearch

