

# Comands
```vi nginx-deployment.yaml```

```kubectl apply -f nginx-deployment.yaml```


# httpd-deploy.yaml
```
apiVersion: v1
kind: Pod
metadata:
  name: httpd-pod
  labels:
    app: httpd
spec:
  containers:
  - name: httpd-container
    image: httpd:latest
    resources:
      limits:
        cpu: 100m
        memory: 20Mi
      requests:
        cpu: 100m
        memory: 15Mi
    ports:
    - containerPort: 80```


#Check

```kubectl get deployments```

```kubectl get pods```
