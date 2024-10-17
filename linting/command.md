## kubescape
    https://github.com/kubescape/kubescape/blob/master/docs/getting-started.md#install-kubescape

## kube-score
    https://github.com/zegl/kube-score

## kubesec
    https://github.com/controlplaneio/kubesec

## trivy
    https://github.com/aquasecurity/trivy

## kube-bench
    https://github.com/aquasecurity/kube-bench

## cicd integration
    Pre-Build:
    KubeSec & KubeScore: Scan Kubernetes manifests to check for misconfigurations and ensure best practices are followed.

    Post-Build (Image):
    Trivy: Scan the newly built container image for vulnerabilities (OS-level and dependencies).

    Pre-Deployment:
    Kubescape: Scan Kubernetes manifests for security misconfigurations.
    
    Post-Deployment:
    kube-bench: Run CIS benchmark checks against the Kubernetes cluster.
    Kubescape: Scan the live cluster for vulnerabilities and misconfigurations.
