# Save image to file
docker save --output /temp/hello.tar larsthorup-k8s-kind-sandbox/hello:local
Get-ChildItem /temp/hello.tar

# Reference docker inside minikube
& minikube docker-env | Invoke-Expression

# Load image from file
docker load --input /temp/hello.tar 
docker image ls