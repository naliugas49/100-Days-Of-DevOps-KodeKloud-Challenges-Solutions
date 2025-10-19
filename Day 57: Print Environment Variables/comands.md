## Create Manifest

```
vi print-envars-greeting.yaml
```

## Apply
```
kubectl apply  -f print-envars-greeting.yaml 
```


## Check
```
kubectl logs -f print-envars-greeting
```
