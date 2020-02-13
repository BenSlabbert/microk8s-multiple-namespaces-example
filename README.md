# Microk8s Example

This is a demo of [Microk8s](https://microk8s.io) with multiple namespaces.

The reason for this repo is because I couldn't find something like this, so I created it.

## Setup

1.) Do the [quick start](https://microk8s.io/docs/) and enable the [addons](https://microk8s.io/docs/addons)

```shell script
microk8s.enable dns dashboard ingress
```

Note: this will expose the cluster on `localhost:80` make sure this port is available, I am not sure how to change this.

2.) Apply the `defualt` configurations

```shell script
microk8s.kubectl apply -f default/
```

3.) Apply the `echo` configurations

```shell script
microk8s.kubectl apply -f echo/namespace.yml
microk8s.kubectl apply -f echo/
```

4.) Test!

this will resolve `default.localhost` to `localhost` and the `default` namespace

```shell script
curl -L --insecure --resolve default.localhost:80:localhost http://default.localhost:80
```

this will resolve `echo.localhost` to `localhost` and the `echo` namespace

```shell script
curl -L --insecure --resolve echo.localhost:80:localhost http://echo.localhost:80/echo/world
```

### Helpful commands

```shell script
microk8s.status
```

```shell script
microk8s.start
```

```shell script
microk8s.stop
```

```shell script
microk8s.kubectl apply -f echo/
```

```shell script
microk8s.kubectl delete -f echo/
```

```shell script
microk8s.enable dns dashboard ingress
```

```shell script
microk8s.disable dns dashboard ingress
```

```shell script
microk8s.status | grep enabled
```
