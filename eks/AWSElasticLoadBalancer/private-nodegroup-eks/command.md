### create a node group in VPC Private Subnets
### deploy workloads on the private node group
### load balancer gets created in public subnet and accessible via internet.
## Delete existing Public Node Group in EKS Cluster
    eksctl get nodegroup --cluster=eksdemo1
    eksctl delete nodegroup eksdemo1-ng-public1 --cluster eksdemo1

## Create EKS nodegroup in private subnets
    eksctl create nodegroup --cluster=eksdemo1 \
                        --region=us-east-1 \
                        --name=eksdemo1-ng-private1 \
                        --node-type=t3.medium \
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
                        --alb-ingress-access \
                        --node-private-networking 

### verify nodegroup (External IP Address should be none if Worker Nodes created in Private Subnets)
    kubectl get nodes -o wide