

# Comands
```vi nginx-deployment.yaml```

```kubectl apply -f nginx-deployment.yaml```


# httpd-deploy.yaml
```
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx
  labels:
   app: nginx
spec:
  replicas: 3
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx        
    spec:
      containers:
        - name: nginx
          image: nginx:latest
          ports:
          - containerPort: 80
```


# Check

```kubectl get deployments```

```kubectl get pods```
