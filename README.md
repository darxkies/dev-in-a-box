# dev-in-a-box

By typing `make` a Docker Container gets started with all the tools necessary to develop programs in Golang, JavaScript, Html, Vue and Python. In the container type `vim` to start NeoVim. Additionally you can use tmux/tmuxinator.

## Notes

* tmux prefix is C-j
* in vi in insert mode type jk to simulate escape  
* containers on the host can be managed from within the container 

## Usage

### Start

Starts the container and it runs in the background:

```shell
make start
```

### Stop

Kills the container:

```shell
make stop
```

### Attach

Kills the container:

```shell
make 
```

Type Ctrl+p & Ctrl+q to detach from the container by letting it to run in the background. If you type exit it will kill the container.
