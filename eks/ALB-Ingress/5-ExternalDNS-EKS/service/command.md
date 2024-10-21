# Deploy kube-manifests
    kubectl apply -f deployment.yml
    kubectl apply -f service.yml
    kubectl get deploy
    kubectl get pods
    kubectl get svc

### Verify External DNS logs
    kubectl logs -f $(kubectl get po | egrep -o 'external-dns[A-Za-z0-9-]+')

# nslookup commands
nslookup externaldns-k8s-service-demo101.stacksimplify.com
Access Application using DNS domain
# HTTP URL
http://externaldns-k8s-service-demo101.stacksimplify.com/app1/index.html