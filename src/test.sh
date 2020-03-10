docker run --name hello --publish 49160:8080 --detach larsthorup-k8s-kind-sandbox/hello:local
sleep 10
curl localhost:49160 | grep "Hello World"
docker container stop hello
docker container rm hello