### Create Cluster
    eksctl create cluster --name=eksdemo1 \
                        --region=us-east-1 \
                        --zones=us-east-1a,us-east-1b \
                        --without-nodegroup 

### Get List of clusters
    eksctl get cluster

### IAM OIDC Provider for EKS Cluster
    eksctl utils associate-iam-oidc-provider \
        --region us-east-1 \
        --cluster eksdemo1 \
        --approve

### Create Key pair to access nodegroups(kube-demo)

### Create Public Node Group   
    eksctl create nodegroup --cluster=eksdemo1 \
                        --region=us-east-1 \
                        --name=eksdemo1-ng-public1 \
                        --node-type=t3.medium \
                        --nodes=2 \
                        --nodes-min=2 \
                        --nodes-max=4 \
                        --node-volume-size=20 \
                        --ssh-access \
                        --ssh-public-key=kube-demo \
                        --managed \
                        --asg-access \
                        --external-dns-access \
                        --full-ecr-access \
                        --appmesh-access \
                        --alb-ingress-access 

### Verify Cluster
    eksctl get cluster
    eksctl get nodegroup --cluster=eksdemo1
    kubectl get nodes -o wide
    kubectl config view --minify

### Allow traffic on workernodes
    Go to Services -> EC2 -> Worker Nodes
    Click on Security Group associated to EC2 Instance which contains remote in the name.
    allow All Traffic
