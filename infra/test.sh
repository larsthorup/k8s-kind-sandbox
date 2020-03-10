. ./k8s-lib.sh
HELLO_URL=$(getServiceUrl hello-svc)
echo Exposed URL of hello-app is ${HELLO_URL}

# Request from app
curl -i ${HELLO_URL} > /tmp/hello.txt
echo ------
cat /tmp/hello.txt
echo ------

# Verify app output
cat /tmp/hello.txt | grep "Hello World"
