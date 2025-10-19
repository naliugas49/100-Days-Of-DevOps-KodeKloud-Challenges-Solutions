## Create Manifest
```
vi nodePort_service.yaml
vi grafana-deployment.yaml
```

## Apply
```
kubectl apply -f nodePort_service.yaml 
kubectl apply -f grafana-deployment.yaml 
```

## Check
```
k get pod
```
