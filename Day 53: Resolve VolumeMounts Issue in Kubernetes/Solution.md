# The problem is that nginx container was config with path "/var/www/html", but the volume was at "/usr/share/nginx/html"

## 🔧 Option 1: Fix nginx.conf to use the correct path

### ✅ Edit ConfigMap nginx-config 

```kubectl edit configmap nginx-config```

### ✅ Change route

```root /var/www/html;```

replace to

```root /usr/share/nginx/html;```

### ✅ How do I know if a pod is managed by a deployment?

``` kubectl get pod nginx-phpfpm -o jsonpath="{.metadata.ownerReferences}" ```

If the result is empty, the pod is not managed by a Deployment

### ✅ How do I recreate a pod if it's not managed by a deployment?

``` kubectl get pod nginx-phpfpm -o yaml > nginx-phpfpm.yaml ```

### 🔄 Step 2: Restart pod to apply the new ConfigMap

``` kubectl delete pod nginx-phpfpm ```

### Volver a crear el pod

``` kubectl apply -f nginx-phpfpm.yaml ```

### ✅ Step 3: Copy index.php to the Nginx container

``` kubectl cp /home/thor/index.php nginx-phpfpm:/usr/share/nginx/html/index.php -c nginx-container  ```






