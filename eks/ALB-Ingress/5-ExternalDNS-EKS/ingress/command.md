### Deploy kube-manifests
    kubectl apply -f deployment1.yml
    kubectl apply -f deployment2.yml
    kubectl apply -f deployment3.yml
    kubectl apply -f external-dns-ingress.yml
    kubectl get ingress
    kubectl get deploy
    kubectl get pods
    kubectl get svc

### Verify External DNS logs
    kubectl logs -f $(kubectl get po | egrep -o 'external-dns[A-Za-z0-9-]+')

### nslookup commands
    nslookup dnstest901.kodeoncloud.com
    nslookup dnstest902.kodeoncloud.com

### Access Application using dnstest1 domain
### HTTP URLs (Should Redirect to HTTPS)
    http://dnstest901.kodeoncloud.com/app1/index.html
    http://dnstest901.kodeoncloud.com/app2/index.html
    http://dnstest901.kodeoncloud.com/

### Access Application using dnstest2 domain
### HTTP URLs (Should Redirect to HTTPS)
    http://dnstest902.kodeoncloud.com/app1/index.html
    http://dnstest902.kodeoncloud.com/app2/index.html
    http://dnstest902.kodeoncloud.com/