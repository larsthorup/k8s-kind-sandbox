# k8s-kind-sandbox

[![Build Status](https://travis-ci.org/larsthorup/k8s-kind-sandbox.png)](https://travis-ci.org/larsthorup/k8s-kind-sandbox)

This repo demonstrates how to test docker and k8s scripts on Travis-CI or any other CI service with no signup to any cloud services required.

The scripts also run successfully locally on Windows using "minikube" (instead of "kind").

Inspired by this blog post: https://dzone.com/articles/running-kubernetes-in-the-ci-pipeline-for-integrat

## Prequisites

```bash
bash --version
docker --version
```

## Build image

```bash
cd src
build.sh
```

## Deploy to cluster (not minikube)

```bash
cd infra
setup-kind-cluster.sh
load.sh
deploy.sh
expose.sh
test.sh
```

## Deploy to minikube

```bash
cd infra
load-in-minikube-as-admin.ps1 # as admin
deploy.sh
expose.sh
test.sh
```
