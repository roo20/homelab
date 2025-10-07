helm upgrade -i cert-manager ./infra/cert-manager/chart --namespace cert-manager --create-namespace --values ./infra/cert-manager/values.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.15.2/config/manifests/metallb-native.yaml
helm upgrade -i ingress-nginx ./infra/ingress-nginx/chart --namespace ingress-nginx --create-namespace --values ./infra/ingress-nginx/values.yaml

helm upgrade -i metallb metallb/metallb --namespace metallb-system --create-namespace --values ./infra/metallb/values.yaml
helm upgrade -i metallb metallb/metallb --namespace metallb-system --create-namespace

kubectl apply -f c:\Users\kotai\sources\k8s\k8s.deployment\infra\test-service.yaml
kubectl apply -f ./infra/metallb/ip-pool.yaml

kubectl delete -f https://raw.githubusercontent.com/metallb/metallb/v0.15.2/config/manifests/metallb-native.yaml


create namespace metallb-system with more permissive RBAC
