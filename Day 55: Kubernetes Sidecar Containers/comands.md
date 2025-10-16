## Create
'''
vi sidecar-container.yaml
'''
## Apply
'''
kubectl apply -f sidecar-container.yaml 
'''
## Check
'''
k get pod webserver 
k logs webserver -c sidecar-container
'''
