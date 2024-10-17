## github
    https://github.com/shipwright-io/build
## install tekton
    kubectl apply --filename https://storage.googleapis.com/tekton-releases/pipeline/previous/v0.62.3/release.yaml

## shipwright deployment
    kubectl apply --filename https://github.com/shipwright-io/build/releases/download/v0.13.0/release.yaml --server-side
    curl --silent --location https://raw.githubusercontent.com/shipwright-io/build/v0.13.0/hack/setup-webhook-cert.sh | bash
    curl --silent --location https://raw.githubusercontent.com/shipwright-io/build/main/hack/storage-version-migration.sh | bash 

## shipwright strategies
    kubectl apply --filename https://github.com/shipwright-io/build/releases/download/v0.13.0/sample-strategies.yaml --server-side

## create container regisries secret
    REGISTRY_SERVER=https://index.docker.io/v1/ REGISTRY_USER=<your_registry_user> REGISTRY_PASSWORD=<your_registry_password>
    kubectl create secret docker-registry push-secret \
        --docker-server=$REGISTRY_SERVER \
        --docker-username=$REGISTRY_USER \
        --docker-password=$REGISTRY_PASSWORD  \
    --docker-email=<your_email>

## apply shipwrightBuild.yml
    kubectl apply -f shipwrightBuild.yml
    kubectl get build
    kubectl get build --all-namespace

## apply buildrun
    kubectl create -f buildrun.yml
    kubectl get buildruns
    kubectl api-resources