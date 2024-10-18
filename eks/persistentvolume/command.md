## doc
    https://github.com/kubernetes-sigs/aws-ebs-csi-driver/tree/master/examples/kubernetes
    
### Create sc , pv, pvc
    kubectl apply -f storage-class.yml
    kubectl apply -f persistent-volume-claim.yml
    kubectl apply -f configmap.yml
    kubectl get sc
    kubectl get pvc 
    kubectl get pv

### Connect to mysqldb and validate
    kubectl run -it --rm --image=mysql:5.6 --restart=Never mysql-client -- mysql -h mysql -pdbpassword11
    mysql> show schemas;
    [or]
### Use mysql client latest 
    kubectl run -it --rm --image=mysql:latest --restart=Never mysql-client -- mysql -h mysql -pdbpassword11
    mysql> show schemas;
