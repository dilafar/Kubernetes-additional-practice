### Deploy kube-manifests   
    kubectl apply -f deployment1.yml
    kubectl apply -f deployment2.yml
    kubectl apply -f deployment3.yml
    kubectl apply -f external-dns-ingress.yml

### Verify External DNS logs
    kubectl logs -f $(kubectl get po | egrep -o 'external-dns[A-Za-z0-9-]+')

### nslookup commands
    nslookup default101.kodeoncloud.com
    nslookup app101.kodeoncloud.com
    nslookup app201.kodeoncloud.com

### HTTP URLs (Should Redirect to HTTPS)
    http://app101.kodeoncloud.com/app1/index.html
    http://app201.kodeoncloud.com/app2/index.html
    http://default101.kodeoncloud.com