## docker-compose from alpinelinux

- [https://hub.docker.com/r/alpinelinux/docker-compose/tags](https://hub.docker.com/r/alpinelinux/docker-compose/tags)

```bash
$ docker-compose version
Docker Compose version v2.17.3
```

- install

```bash
$ sudo curl -L --fail https://raw.githubusercontent.com/bridgewwater/docker-exec-tools/main/docker-compose/full-platform/alpinelinux/run.sh -o /usr/local/bin/docker-compose
$ sudo chmod +x /usr/local/bin/docker-compose
# then check
$ docker-compose version
```
