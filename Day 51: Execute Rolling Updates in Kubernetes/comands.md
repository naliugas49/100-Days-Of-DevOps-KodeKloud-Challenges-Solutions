### Check the Deploy

```kubectl get deployment nginx-deployment```

### Check Image

```kubectl describe deployment nginx-deployment | grep Image```

### Execute Rolling Update

```kubectl set image deployment/nginx-deployment *=nginx:1.19```

### Check Progress

```kubectl rollout status deployment/nginx-deployment```
