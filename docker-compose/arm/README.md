## docker-compose run as contain

- Support architectures: arm32v6, amd64, arm32v7, arm64v8, i386

use images [gists/docker-compose-bin](https://hub.docker.com/r/gists/docker-compose-bin)

```sh
$ sudo curl -L --fail https://github.com/bridgewwater/docker-exec-tools/releases/download/v1.26.0-arm/run.sh -o /usr/local/bin/docker-compose
$ sudo chmod +x /usr/local/bin/docker-compose
# then check
$ docker-compose version
```