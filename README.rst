         _                    __              _
     ___(_) _ _   __ _  _ _  / _|       __ __(_) _ __
    (_-/| || ' \ / _` || '_||  _|  _    \ V /| || '  \
    /__/|_||_||_|\__/_||_|  |_|   (_)    \_/ |_||_|_|_|


Introduction
============

This is my third reboot of my dotvim configuration. I had a bunch of stuff randomly pasted from various place, a big clean up. 
To know what's been implemented and what I'd like to do, see ./TODO.rst

Prerequisites (might miss some stuff): 
=======================================

* The following software are needed:
    
    - git
    - curl
    - fzf
    - vim with Python support enable

Installation
============

1. Clone this repo in .vim on Linux or vimfiles on Windows directory

2. Run ``:PlugClean``
   
3. Run ``:PlugInstall``

4. Run ``:CocInstall coc-explorer coc-vimlsp coc-marketplace coc-snippets``

5. [Windows spécific] make a link to vimfiles from .vim ``mklink .vim vimfiles`` 

