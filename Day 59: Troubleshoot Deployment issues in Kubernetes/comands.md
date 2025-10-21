## Revisar el pod

``
k get pods
``

## Ver que error está dando 
``
k describe pod redis-deployment-5bcd4c7d64-rqq9v
``
### El error era en el deploy debía decir "redis-config" y decía "redis-conig"
``
## Vemos como se llama el deply y lo editamos
``
k get deployments.apps
k edit deployments.apps redis-deployment
``

## Nos da otro error y repetimo para ver el error
``
k get pod
k describe  pod redis-deployment-54cdf4f76d-sksdj
``
### El error era en el deploy debía decir "redis:alpine" y decía "redis-alpin"****
``
k edit deployments.apps redis-deployment
``
## Comprobación final para ver que funcione el pod
k get pod
