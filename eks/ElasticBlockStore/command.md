## Create IAM Policy for EBS
### Services -> IAM >Create a Policy (JSON)
    {
        "Version": "2012-10-17",
        "Statement": [
            {
            "Effect": "Allow",
            "Action": [
                "ec2:AttachVolume",
                "ec2:CreateSnapshot",
                "ec2:CreateTags",
                "ec2:CreateVolume",
                "ec2:DeleteSnapshot",
                "ec2:DeleteTags",
                "ec2:DeleteVolume",
                "ec2:DescribeInstances",
                "ec2:DescribeSnapshots",
                "ec2:DescribeTags",
                "ec2:DescribeVolumes",
                "ec2:DetachVolume"
            ],
            "Resource": "*"
            }
        ]
    }
### Name: Amazon_EBS_CSI_Driver
### Description: Policy for EC2 Instances to access Elastic Block Store
### Click on Create Policy

### Get the IAM role Worker Nodes and Associate this policy to that role
### Get Worker node IAM Role ARN
    kubectl -n kube-system describe configmap aws-auth
### from output check rolearn
    rolearn: arn:aws:iam::180789647333:role/eksctl-eksdemo1-nodegroup-eksdemo-NodeInstanceRole-IJN07ZKXAWNN

### Services -> IAM -> Roles
### Search for role with name eksctl-eksdemo1-nodegroup and open it
### Click on Permissions tab
### Click on Attach Policies
### Search for Amazon_EBS_CSI_Driver and click on Attach Policy

## Deploy Amazon EBS CSI Driver
    kubectl version --client --short
    kubectl apply -k "github.com/kubernetes-sigs/aws-ebs-csi-driver/deploy/kubernetes/overlays/stable/?ref=master"
    kubectl get pods -n kube-system