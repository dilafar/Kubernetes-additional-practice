### Create Storage Class & PVC
    kubectl apply -f storage-class.yml
    kubectl apply -f persistent-volume-claim.yml

### List Storage Classes
    kubectl get sc

### List PVC
    kubectl get pvc 

### List PV
    kubectl get pv