## for kompose

- from [https://hub.docker.com/r/femtopixel/kompose](https://hub.docker.com/r/femtopixel/kompose)

Docker image (multiarch) to convert docker-compose syntax to Kubertnetes syntax

[https://github.com/kubernetes/kompose](https://github.com/kubernetes/kompose)

```bash
# install kompose for amd64
v=1.32.0; sudo curl -L --fail -o /usr/local/bin/kompose \
  https://mirror.ghproxy.com/https://github.com/kubernetes/kompose/releases/download/v$v/kompose-linux-amd64

chmod +x /usr/local/bin/kompose

# install kompose for arm
v=1.32.0; sudo curl -L --fail -o /usr/local/bin/kompose \
  https://mirror.ghproxy.com/https://github.com/kubernetes/kompose/releases/download/v$v/kompose-linux-arm

chmod +x /usr/local/bin/kompose
```