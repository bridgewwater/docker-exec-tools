# docker exec tools

- must run docker first
- then use script install tools

## docker-compose run as contain

- for linux use only

```sh
$ sudo curl -L --fail https://raw.githubusercontent.com/bridgewwater/docker-exec-tools/main/docker-compose/1.24.1/run.sh -o /usr/local/bin/docker-compose
$ sudo chmod +x /usr/local/bin/docker-compose
```

### support arm

- lastest support arm32v7

```sh
$ sudo curl -L --fail https://raw.githubusercontent.com/bridgewwater/docker-exec-tools/main/docker-compose/arm/arm32v7-latest/run.sh -o /usr/local/bin/docker-compose
$ sudo chmod +x /usr/local/bin/docker-compose
```

- Support architectures: arm32v6, amd64, arm32v7, arm64v8

```sh
$ sudo curl -L --fail https://github.com/bridgewwater/docker-exec-tools/releases/download/v1.26.0-arm-ls5/run.sh -o /usr/local/bin/docker-compose
$ sudo chmod +x /usr/local/bin/docker-compose
# then check
$ docker-compose version
```

# kubectl

- for [https://github.com/kubernetes/kubectl](https://github.com/kubernetes/kubectl)

```sh
$ sudo curl -L --fail https://raw.githubusercontent.com/bridgewwater/docker-exec-tools/main/kubectl/latest/run.sh -o /usr/local/bin/kubectl
$ sudo chmod +x /usr/local/bin/kubectl
# then check
$ kubectl --help
```

## dive

- [dive github page](https://github.com/wagoodman/dive)

instal dive as exec

```sh
$ sudo curl -s -L --fail https://raw.githubusercontent.com/bridgewwater/docker-exec-tools/main/dive/v0.9.2/run.sh -o /usr/local/bin/dive
$ sudo chmod +x /usr/local/bin/dive
```

- <kbd>Tab</kbd>  Switch between the layer and filetree views
- <kbd>Space</kbd> collapse/uncollapse a directory
- <kbd>Ctrl + Space</kbd>  collapse/uncollapse all directories
- <kbd>Ctrl + F</kbd> Filter files
- <kbd>PageUp</kbd> Scroll up a page
- <kbd>PageDown</kbd> Scroll down a page

> more KeyBingds see [https://github.com/wagoodman/dive#keybindings](https://github.com/wagoodman/dive#keybindings)

- uninstall as

```sh
$ sudo rm -rf /usr/local/bin/dive
```

## qrencode

```bash
$ sudo curl -s -L --fail https://raw.githubusercontent.com/bridgewwater/docker-exec-tools/main/qrencode/latest/run.sh -o /usr/local/bin/qrencode
$ sudo chmod +x /usr/local/bin/qrencode
$ qrencode --help
```

## pgcli

### psql

```bash
$ sudo curl -s -L --fail https://raw.githubusercontent.com/bridgewwater/docker-exec-tools/main/pgcli/psql/9.6.16-alpine/run.sh -o /usr/local/bin/psql
$ sudo chmod +x /usr/local/bin/psql
```

### pygmy/pgcli

install pygmy/pgcli as exec

```bash
$ sudo curl -s -L --fail https://raw.githubusercontent.com/bridgewwater/docker-exec-tools/main/pgcli/pygmy/run.sh -o /usr/local/bin/pgcli
$ sudo chmod +x /usr/local/bin/pgcli
```
