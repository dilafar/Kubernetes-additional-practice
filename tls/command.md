### github
    https://github.com/FiloSottile/mkcert

### install mkcert
    wget https://github.com/FiloSottile/mkcert/releases/download/v1.4.4/mkcert-v1.4.4-linux-amd64
    mv mkcert-v1.4.4-linux-amd64 mkcert
    mv mkcert /usr/local/bin/ 
    chmod +x /usr/local/bin/mkcert
    mkcert --help

### create cert 
    mkcert -cert-file public.pem -key-file private.pem secrets.myapp.com

### create secret 
    kubectl create secret tls secret-myapp-com --cert=public.pem --key=private.pem -n website -o yaml > secret-myapp-com.yml

    kubectl get secret -n website

### nginx 
    https://kubernetes.github.io/ingress-nginx/deploy/#quick-start

    kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.11.2/deploy/static/provider/cloud/deploy.yaml