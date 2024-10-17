### apply deployment , service, ingress
    kubectl apply -f deployment_1.yml
    kubectl apply -f deployment_2.yml
    kubectl apply -f deployment_3.yml
    kubectl apply -f ingress.yml

### List Pods
    kubectl get pods

### List Services
    kubectl get svc

### List Ingress
    kubectl get ingress

### Verify Ingress Controller Logs
    kubectl get pods -n ingress-basic  

### Verify External DNS pod to ensure record set got deleted
    kubectl logs -f $(kubectl get po | egrep -o 'external-dns[A-Za-z0-9-]+')

    nslookup app1.kubeoncloud.com
    nslookup app2.kubeoncloud.com
    nslookup app3.kubeoncloud.com