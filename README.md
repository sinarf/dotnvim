# sinarf Neovim configuration

```shell
      _                    __              _
  ___(_) _ _   __ _  _ _  / _|       __ __(_) _ __
 (_-/| || ' \ / _` || '_||  _|  _    \ V /| || '  \
 /__/|_||_||_|\__/_||_|  |_|   (_)    \_/ |_||_|_|_|
```

## Disclaimer

This is my personal configuration, it is not meant be used by anybody else.
It is not forbidden, you are allowed, see the [licence](./LICENSE) for details, anyhow it would be probably very stupid to use it.

If you need something more complete you should look at what @ChristianChiarulli work, especially the [Neovim from scratch repo](https://github.com/LunarVim/Neovim-from-scratch).
I took a lot of inspiration from that repository. 

## This configuration should have the following feature

- [ ] PDE (personal Development Environment)
  - [X] Python
    - [X] LSP (pylsp)
    - [X] Format. Working but should use black thru the null LSP plugin
  - [X] Bash
    - [X] LSP
    - [ ] ~~Format~~ Could use `shfmt` but does stuff I don't want/like and I didn't any obvious configuration flag that I could use. 
  - [ ] Groovy - Jenkins Pipeline
    - [X] LSP - Easy to install but not very useful. Might want to use `npm-groovy-lint` with `null-ls`
    - [ ] Format
  - [X] Lua
    - [X] LSP
    - [X] Format
- [ ] Note taking / Doc
  - [X] Markdown
    - [X] LSP
    - [X] Format
    - [X] Live Preview, ideally in terminal

## Installation

Clone the repo : 

```shell
git clone git@github.com:sinarf/dotnvim.git .config/nvim
```
