```bash
# Install MetalLB with L2 mode (no FRR/BGP needed)
helm upgrade -i metallb ./infra/metallb/chart --create-namespace -n metallb-system -f ./infra/metallb/values-override.yaml

# Apply IP pool configuration
kubectl apply -f infra/metallb/ip-pool.yaml

# Uninstall if needed
helm uninstall metallb -n metallb-system 
```