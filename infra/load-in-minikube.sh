docker save --output /tmp/hello.tar larsthorup-k8s-kind-sandbox/hello:local
eval $(minikube docker-env)

kind load docker-image larsthorup-k8s-kind-sandbox/hello:local
