# The problem is that "nginx-container" was config with path "/usr/share/nginx/html", but the volume was at "/var/www/html"

## 🔧 Option 1: Fix to use the correct path

### ✅ Edit pod nginx-phpfpm

```kubectl  edit pod nginx-phpfpm ```

### ✅ Change route in the container "nginx-container"

```mountPath: /usr/share/nginx/html```

replace to

``` mountPath: /var/www/html```

### when save we can see the logs:
```error: pods "nginx-phpfpm" is invalid```

A copy of your changes has been stored to "/tmp/kubectl-edit-3208460137.yaml"

error: Edit cancelled, no valid changes were saved.```


### Start again el pod

```  kubectl apply -f /tmp/kubectl-edit-3208460137.yaml --force ```

### ✅ Step 3: Copy index.php to the Nginx container

``` kubectl cp /home/thor/index.php nginx-phpfpm:/var/www/html -c nginx-container  ```






