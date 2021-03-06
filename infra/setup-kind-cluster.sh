KUBECTL_RELEASE=v1.17.3
KIND_RELEASE=v0.7.0

# Download and install kubectl
curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_RELEASE}/bin/linux/amd64/kubectl
chmod +x kubectl
sudo mv kubectl /usr/local/bin/

# Download and install KinD
curl -Lo kind https://github.com/kubernetes-sigs/kind/releases/download/${KIND_RELEASE}/kind-linux-amd64
chmod +x kind
sudo mv kind /usr/local/bin/

# Create a new Kubernetes cluster using KinD
kind create cluster

# Set KUBECONFIG environment variable
export KUBECONFIG="$(kind get kubeconfig-path)"
