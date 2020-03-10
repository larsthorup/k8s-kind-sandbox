. ./k8s-lib.sh
HELLO_URL=$(getServiceUrl hello-svc)
echo Exposed URL of hello-app is ${HELLO_URL}

# Request from app
curl -i ${HELLO_URL} > /tmp/hello.txt
cat /tmp/hello.txt

# Verify app output
cat /tmp/hello.txt | grep "Check out my K8s Deep Dive course!"
