# docker exec tools

- must run docker first
- then use script install tools

## docker-compose

- for linux use only

```sh
$ sudo curl -L --fail https://raw.githubusercontent.com/bridgewwater/docker-exec-tools/master/docker-compose/1.24.1/run.sh -o /usr/local/bin/docker-compose
$ sudo chmod +x /usr/local/bin/docker-compose
```

## dive

- [dive github page](https://github.com/wagoodman/dive)

instal dive as exec

```sh
$ sudo curl -s -L --fail https://raw.githubusercontent.com/bridgewwater/docker-exec-tools/master/dive/v0.7.2/run.sh -o /usr/local/bin/dive
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

## pgcli

### pygmy/pgcli

install pygmy/pgcli as exec

```bash
$ sudo curl -s -L --fail https://raw.githubusercontent.com/bridgewwater/docker-exec-tools/master/pgcli/pygmy/run.sh -o /usr/local/bin/pgcli
$ sudo chmod +x /usr/local/bin/pgcli
```
