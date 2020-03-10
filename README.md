# k8s-kind-sandbox

[![Build Status](https://travis-ci.org/larsthorup/k8s-kind-sandbox.png)](https://travis-ci.org/larsthorup/k8s-kind-sandbox)

Inspired by this blog post: https://dzone.com/articles/running-kubernetes-in-the-ci-pipeline-for-integrat

This repo demonstrates how to test k8s scripts on Trevis-CI with no signup to any cloud services required.

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
