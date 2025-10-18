## Crete Manifest
```
vi nginx-deployment.yaml
```

## Create Manifest
```
vi nodePort-service.yaml
```

## Apply service
```
kubectl apply -f nodePort-service.yaml 
```

## Apply deploy
```
kubectl apply -f nginx-deployment.yaml 
```

## Check
```
kubectl get pod
kubectl get svc
```
