### apply and verify
    kubectl apply -f deployment1.yml
    kubectl apply -f deployment2.yml
    kubectl apply -f deployment3.yml
    kubectl apply -f ingress.yml
    kubectl get pods
    kubectl get svc
    kubectl get ingress
    kubectl describe ingress ingress-cpr-demo
    kubectl -n kube-system  get pods 
    kubectl -n kube-system logs -f aws-load-balancer-controller-794b7844dd-8hk7n 
### note: Root path need to be at the end of ingress rules (eg :- / need to be at the end of all other rules)