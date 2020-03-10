docker run -p 49160:8080 -d larsthorup-k8s-kind-sandbox/hello:local
sleep 10
curl localhost:49160 | grep "Hello World"