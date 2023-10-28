# openshift-rsyslog

Example configuration for rsyslog in OpenShift 4.

## Usage

### Deploy the rsyslogd container as a DaemonSet

First, edit [openshift/05_configmap-rsyslogd-config.yaml](openshift/05_configmap-rsyslogd-config.yaml) if you'd like to change the configuration of rsyslogd.

Then, change the environment variable ```LOGSERVER``` in [openshift/10_daemonset-rsyslogd.yaml](openshift/10_daemonset-rsyslogd.yaml) to point to your particular log server.

Finally, deploy the workload:

```
$ oc create -k openshift/
```

## Deploy Using GitOps

### Provision RHPDS Enviornment
* OCP4 ACM Hub
* OCP4 ACM Managed
* OCP4 ACM Managed

### Prerequisites for deployment

### Install kustomize

[kustomize](https://kubernetes-sigs.github.io/kustomize/installation/)
```
$ curl -s "https://raw.githubusercontent.com/\
kubernetes-sigs/kustomize/master/hack/install_kustomize.sh"  | bash
$ sudo mv kustomize /usr/local/bin/
```

### Test clusters config
**edit the following files as needed in each cluster directory**
* logendpoint.conf
* openshift_api.conf
* rsyslog.conf
* Rename RTORootCA.crt and update cert

**Test cluster1**
```
kustomize build gitops/overlay/cluster1
```

**Test cluster2**
```
kustomize build gitops/overlay/cluster2
```

**Test cluster3**
```
kustomize build gitops/overlay/cluster3
```