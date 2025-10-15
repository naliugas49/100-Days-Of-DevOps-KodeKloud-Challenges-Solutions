## Create deploy

```vi share-datacenter.yaml```

## Apply deploy
````k apply -f share-datacenter.yaml```` 

## Check
``k get pod``

k exec -it volume-share-datacenter -c volume-container-datacenter-1 -- sh


k exec -it volume-share-datacenter -c volume-container-datacenter-2 -- sh
