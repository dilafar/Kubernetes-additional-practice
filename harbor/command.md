### external dns documantation
    https://github.com/kubernetes-sigs/external-dns

## create namespace and switch to namespace
    kubectl apply -f namespace.yml
    kubens external-dns

## apply externel dns config (digitalocen)
    kubectl apply -f digital-ocen.yml

### documentation URL
    https://kubernetes.github.io/ingress-nginx/deploy/#quick-start
### Apply Ingress Controller
    kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.11.2/deploy/static/provider/cloud/deploy.yaml

### Check Api Version
    kubectl api-resources --api-group=networking.k8s.io

### verify ingress class
    kubectl get ingressclass

### cert manager documentation
    https://cert-manager.io/docs/installation/kubectl/

### install cert manager 
    kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.15.3/cert-manager.yaml

### verify cert manager
    kubectl get all -n cert-manager

### end 
    kubectl describe certificate
    kubectl describe certificaterequest 
    kubectl describe order   
    kubectl describe challenge
    kubectl get certificate 
    kubectl get certificaterequest

## apply issuer
    kubectl apply -f dns.yml
    kubectl apply -f issuer.yml

### harbor helm doc
    https://github.com/goharbor/harbor-helm

### harbor helm repo
    helm repo add harbor https://helm.goharbor.io
    helm repo update
    helm search repo harbor
    helm create namespace harbor

### install harbor helm chart
    helm install myharbor harbor/harbor -n harbor \ 
    --set expose.type=ingress \
    --set externalURL=https://harbor.myappshop.com \
    --set expose.ingress.hosts.core=harbor.myappshop.com \
    --set harborAdminPassword=fadhil1234 \
    --set logLevel=debug
    --set expose.ingress.controller=nginx

### verify helm chart
    helm list --all-namespace
    kubectl get all -n harbor

### get ingress 
    kubectl get ingress -n harbor
    kubectl edit ingress myharbor-ingress -n harbor
    set,
    spec:
        ingressClassName: nginx
    annotations:
        cert-manager.io/cluster-issuer: "letsencrypt-production"

### verify issuer
    kubectl get clusterissuer