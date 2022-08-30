# sinarf Neovim configuration

```shell
                                ___  _              _   _                                    
       _                      /'___)( )            ( ) ( )                      _            
  ___ (_)  ___     _ _  _ __ | (__  |/   ___       | `\| |   __     _    _   _ (_)  ___ ___  
/',__)| |/' _ `\ /'_` )( '__)| ,__)    /',__)      | , ` | /'__`\ /'_`\ ( ) ( )| |/' _ ` _ `\
\__, \| || ( ) |( (_| || |   | |       \__, \      | |`\ |(  ___/( (_) )| \_/ || || ( ) ( ) |
(____/(_)(_) (_)`\__,_)(_)   (_)       (____/      (_) (_)`\____)`\___/'`\___/'(_)(_) (_) (_)

```

## Disclaimer

This is my personal configuration, it is not meant be used by anybody else.
It is not forbidden, you are allowed, see the [licence](./LICENSE) for details, anyhow it would be probably very stupid to do it.

## This configuration should have the following feature

- [ ] PDE (personal Development Environment)
  - [X] Python
    - [X] LSP
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
    - [X] Live Preview
    - [X] keymap to run `mdcat` in a terminal for the current markdown file

## Installation

Clone the repo : 

```shell
git clone git@github.com:sinarf/dotnvim.git .config/nvim
```

