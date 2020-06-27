## docker-compose run as contain

- Support architectures: arm32v6, amd64, arm32v7, arm64v8

[git linuxserver/docker-docker-compose](https://github.com/linuxserver/docker-docker-compose)
[docker.hub linuxserver/docker-compose](https://hub.docker.com/r/linuxserver/docker-compose)

```sh
$ sudo curl -L --fail https://github.com/bridgewwater/docker-exec-tools/releases/download/v1.26.0-arm-ls5/run.sh -o /usr/local/bin/docker-compose
$ sudo chmod +x /usr/local/bin/docker-compose
# then check
$ docker-compose version
```

### gists/docker-compose-bin

- Support architectures: arm32v6, amd64, arm32v7, arm64v8, i386

use images [gists/docker-compose-bin](https://hub.docker.com/r/gists/docker-compose-bin)

```sh
$ sudo curl -L --fail https://github.com/bridgewwater/docker-exec-tools/releases/download/v1.26.0-arm/run.sh -o /usr/local/bin/docker-compose
$ sudo chmod +x /usr/local/bin/docker-compose
# then check
$ docker-compose version
```