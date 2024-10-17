DNS NAME
s3 BUCKET
IAM ROLE AND ASSIGN IT TO EC2
CREATE A EC2 INSTANCE AND GENERATE SSH ROLE
download Kops and kubectl to usr/local/bin change permission

export NAME=cloudk8stest.in 
export KOPS_STATE_STORE=s3://kops.cloudk8stest.in 
export AWS_REGION=us-east-1
export CLUSTER_NAME=cloudk8stest.in


kops create cluster --name=cloudk8stest.in \
--state=s3://kops.cloudk8stest.in  --zones=us-east-1a,us-east-1b \
--node-count=2 --control-plane-count=1 --node-size=t3.medium --control-plane-size=t3.medium \
--control-plane-zones=us-east-1a --control-plane-volume-size 10 --node-volume-size 10 \
--ssh-public-key ~/.ssh/id_rsa.pub \
--dns-zone=cloudk8stest.in --dry-run -o yaml