```
      _                    __              _
  ___(_) _ _   __ _  _ _  / _|       __ __(_) _ __
 (_-/| || ' \ / _` || '_||  _|  _    \ V /| || '  \
 /__/|_||_||_|\__/_||_|  |_|   (_)    \_/ |_||_|_|_|
 ```

# Introduction

 This is my third reboot of my dotvim configuration. I had a bunch of stuff randomly pasted from various place, a big clean up.
 To know what's been implemented and what I'd like to do, see [TODO.md](./TODO.md)

# Installation

 Clone this repo in ``$HOME/.config/nvim`` on Linux or ``$HOME/AppData/Local/nvim`` on Windows directory

- Run ``:PlugClean``
- Run ``:PlugInstall``
- Run ``:CocInstall coc-explorer coc-vimlsp coc-marketplace coc-snippets``
- [Windows spécific] make a link to vimfiles from .vim ``mklink .config AppData\Local``
- Run ``:checkhealth`` and solve issues.
- Run ``:CocInfo``
- Run ``:CocList marketplace`` to install Coc extensions
- Run ``mkdir -p ~/.local/share/vim/{swap,backup,undo}``

