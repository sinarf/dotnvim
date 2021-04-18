# sinarf nvim configuration

```
_                    __              _
___(_) _ _   __ _  _ _  / _|       __ __(_) _ __
(_-/| || ' \ / _` || '_||  _|  _    \ V /| || '  \
 /__/|_||_||_|\__/_||_|  |_|   (_)    \_/ |_||_|_|_|
```

## Introduction

This is my third reboot of my dotvim configuration. I had a bunch of stuff randomly pasted from various place, a big clean up.
To know what's been implemented and what I'd like to do, see [TODO.md](./TODO.md)

It seems that a lot of great new stuff will come with the neovim 0.5 release. This configuration will probably be upgraded when it release. 

There is the things I am forward to do:

* move to telescope
* move away from coc

## Dependencies

This configuration needs the following software to be installed:

* yarn
* python3
* ripgrep

## Installation

Clone this repo in `$HOME/.config/nvim` on Linux or `$HOME/AppData/Local/nvim` on Windows directory

* Run `:PlugClean`
* Run `:PlugInstall`
* Run `:CocInstall coc-explorer coc-vimlsp coc-marketplace coc-snippets coc-java coc-xml`
* Run `:checkhealth` and solve issues.
* Run `:CocInfo`
* Run `:CocList marketplace` to install Coc extensions
* Run `mkdir -p ~/.local/share/vim/{swap,backup,undo}`

