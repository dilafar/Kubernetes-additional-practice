### documentation URL
    https://kubernetes.github.io/ingress-nginx/deploy/#quick-start
### Apply Ingress Controller
    kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.11.2/deploy/static/provider/cloud/deploy.yaml

### Check Api Version
    kubectl api-resources --api-group=networking.k8s.io

### verify ingress class
    kubectl get ingressclass

### set default ingress class 
    kubectl edit ingressclass
      
    annotations:
        ingressclass.kubernetes.io/is-default-class: "true"
    
### check all rsources
        kubectl get all -n ingress-nginx

