# Private overlay

1. Copy `domain.env.example` to `domain.env` and set `host=couchdb.your-real-domain`.
2. Keep `domain.env` out of source control (see the accompanying `.gitignore`).
3. Render manifests with `kustomize build overlays/private` or let your GitOps tool point at this overlay so the ingress host comes from the private file.
