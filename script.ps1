helm upgrade -i cert-manager ./infra/cert-manager/chart --namespace cert-manager --create-namespace --values ./infra/cert-manager/values.yaml
helm upgrade -i ingress-nginx ./infra/ingress-nginx/chart --namespace ingress-nginx --create-namespace --values ./infra/ingress-nginx/values.yaml
helm upgrade -i metallb ./infra/metallb/chart --namespace metallb-system --create-namespace --values ./infra/metallb/values.yaml
