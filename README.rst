   ``         _                    __              _              ``
   ``     ___(_) _ _   __ _  _ _  / _|       __ __(_) _ __        ``
   ``    (_-/| || ' \ / _` || '_||  _|  _    \ V /| || '  \       ``
   ``    /__/|_||_||_|\__/_||_|  |_|   (_)    \_/ |_||_|_|_|      ``

Introduction
============

This is my third reboot of my dotvim configuration. I had a bunch of stuff randomly pasted from various place, a big clean up. 
To know what's been implemented and what I'd like to do, see ./TODO.rst

Installation
============

1. Clone this repo in ``$HOME/.config/nvim`` on Linux or ``$HOME/AppData/Local/nvim`` on Windows directory

2. Run ``:PlugClean``
   
3. Run ``:PlugInstall``

4. Run ``:CocInstall coc-explorer coc-vimlsp coc-marketplace coc-snippets``

5. [Windows spécific] make a link to vimfiles from .vim ``mklink .config AppData\Local`` 

6. Run ``:checkhealth`` and solve issues.

7. Run ``:CocInfo``

8. Run ``:CocList marketplace`` to install Coc extensions

9. Run ``mkdir -p ~/.local/share/vim/{swap,backup,undo}``

