### doc
    https://cert-manager.io/docs/installation/helm/
    
### Label the ingress-basic namespace to disable resource validation
    kubectl label namespace ingress-basic cert-manager.io/disable-validation=true

### Add the Jetstack Helm repository
    helm repo add jetstack https://charts.jetstack.io

### Update your local Helm chart repository cache
    helm repo update

### Install the cert-manager Helm chart in ingress-basic namespace
    helm install \
    cert-manager jetstack/cert-manager \
    --namespace ingress-basic \
    --version v1.16.1 \
    --set crds.enabled=true

### Install the cert-manager Helm chart in cert-manager namespace
    helm install \
    cert-manager jetstack/cert-manager \
    --namespace cert-manager \
    --create-namespace \
    --version v1.16.1 \
    --set crds.enabled=true

### Deploy Cluster Issuer
    kubectl apply -f cluster-issuer.yml

### List Cluster Issuer
    kubectl get clusterissuer

### Verify Cert Manager Pod Logs
    kubectl get pods -n ingress-basic
    kubectl logs -f cert-manager-55d65894c7-sx62f -n ingress-basic