# k8s-kind-sandbox

[![Build Status](https://travis-ci.org/larsthorup/k8s-kind-sandbox.png)](https://travis-ci.org/larsthorup/k8s-kind-sandbox)

This repo demonstrates how to test k8s scripts on Travis-CI or any other CI service with no signup to any cloud services required.

The scripts also run successfully locally using "minikube" instead of "kind".

Inspired by this blog post: https://dzone.com/articles/running-kubernetes-in-the-ci-pipeline-for-integrat

## Prequisites

```bash
bash --version
docker --version
```

## Deploy to cluster

```bash
cd cluster
setup-kind-cluster.sh # Or use minikube
deploy.sh
expose.sh
test.sh
```
