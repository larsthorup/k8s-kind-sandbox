getServiceIp() {
    kubectl get node --selector=node-role.kubernetes.io/master -o=jsonpath='{.items[0].status.addresses[?(@.type=="InternalIP")].address}'
}

getServicePort() {
    local service=$1
    kubectl get service ${service} -o=jsonpath='{.spec.ports[?(@.name=="http")].nodePort}'
}

getServiceUrl() {
    local service=$1
    local host=$(getServiceIp)
    local port=$(getServicePort ${service})
    echo http://${host}:${port}/
}