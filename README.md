enable addons: https://microk8s.io/docs/addons

dns, dashboard, ingress

status

```shell script
microk8s.status
```

start

```shell script
microk8s.start
```

stop

```shell script
microk8s.stop
```

apply

```shell script
microk8s.kubectl apply -f echo/
```

delete

```shell script
microk8s.kubectl delete -f echo/
```

curl to ingress:

```shell script
curl -L --insecure http://localhost:80
```

curl to ingress with different host name:

```shell script
curl -L --insecure --resolve default.localhost:80:localhost http://default.localhost:80
```

this will resolve `default.localhost` to `localhost` and the `default` namespace

```shell script
curl -L --insecure --resolve echo.localhost:80:localhost http://echo.localhost:80/echo/world
```

this will resolve `echo.localhost` to `localhost` and the `echo` namespace

enable addons

```shell script
microk8s.enable dns dashboard ingress
```

disable addons

```shell script
microk8s.disable dns dashboard ingress
```

get enabled addons

```shell script
microk8s.status | grep enabled
```
