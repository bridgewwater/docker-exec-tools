## docker-compose from alpinelinux

- [https://hub.docker.com/r/alpinelinux/docker-compose/tags](https://hub.docker.com/r/alpinelinux/docker-compose/tags)

- for version at v2.17.3
  - Support architectures: linux/386, linux/amd64, linux/arm/v6, linux/arm/v7, linux/arm64/v8, linux/ppc64le, linux/s390x

```bash
$ sudo curl -L --fail -o /usr/local/bin/docker-compose https://github.com/bridgewwater/docker-exec-tools/releases/download/v2.17.3/run.sh
$ sudo chmod +x /usr/local/bin/docker-compose

# then check
$ docker-compose version
```

- install

```bash
$ sudo curl -L --fail https://raw.githubusercontent.com/bridgewwater/docker-exec-tools/main/docker-compose/full-platform/alpinelinux/run.sh -o /usr/local/bin/docker-compose
$ sudo chmod +x /usr/local/bin/docker-compose
# then check
$ docker-compose version
```
