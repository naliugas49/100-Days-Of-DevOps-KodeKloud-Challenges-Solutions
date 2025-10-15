## Create deploy

```vi share-datacenter.yaml```

## Apply deploy
````k apply -f share-datacenter.yaml```` 

## Check
``k get pod``

## Access to container 1 to create the file
``k exec -it volume-share-datacenter -c volume-container-datacenter-1 -- sh``

### Into container
``
cd /tmp/official
touch official.txt
echo "Hello World" > official.txt
exit
``
## Check the file in other container

``k exec -it volume-share-datacenter -c volume-container-datacenter-2 -- sh``

### Into container
`` cat /tmp/cluster/official.txt ``
