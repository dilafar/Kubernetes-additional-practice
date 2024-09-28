### argocd documentation
    https://argo-cd.readthedocs.io/en/stable/getting_started/

### install argocd
    kubectl create namespace argocd
    kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

### install argocd cli
    wget 

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