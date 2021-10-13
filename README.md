# Dotfiles

This repository contains configuration files for basic command line utilities.

## crontab.txt
[Info on Crontab](https://linux.die.net/man/1/crontab) <br />
Simply `crontab crontab.txt`

## .tmux.conf
[Info on tmux](https://man7.org/linux/man-pages/man1/tmux.1.html) <br />
In your `~/.tmux.conf`:
`'source-file <path to .tmux.conf>'`
For example, use `source-file ~/Desktop/Git/dotfiles/.tmux.conf`

## tmux_start.sh
Found under `bin` in this repo, and creates a new `tmux` environment. Aliased in `.zshrc` as `mux` for easily running from command line.
```
├── bin
    └── tmux_start.sh
```


## .vimrc
[Info on vim](https://linuxcommand.org/lc3_man_pages/vim1.html) <br />
In your `~/.vimrc`:
`:so <path to vimrc>`
For example, use `:so ~/Desktop/Git/dotfiles/.vimrc`

You also need to download [vim-plug](https://github.com/junegunn/vim-plug#unix) and the first time you add the `~/.vimrc` above `:PlugInstall` <br />

Note that this appends this command to your setup, so you can add multiple config files if needed.

## .zshrc
[Info on ZSH](https://linux.die.net/man/1/zsh) <br />
In your `~/.zshrc`:
`:source <path to .zshrc>`
For example, use `source ~/Desktop/Git/dotfiles/.zshrc`


Note that this appends this command to your setup, so you can add multiple config files if needed.
