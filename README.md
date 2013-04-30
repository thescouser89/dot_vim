Dustin's vim config files
===========================

Based my vim configs on `vundle`

**Important**: Create a soft link for `.vimrc` by using this command:

    cd ~
    git clone git://github.com/thescouser89/dot_vim.git
    mv dot_vim .vim
    ln -s ~/.vim/vimrc ~/.vimrc


Keybindings:
------------

* `C-t`: Switch between buffers

* `C-n`: Open a new window [tiled]
* `C-j`: Jump to next window
* `C-k`: Jump to previous window
* `C-Space`: Place current window as master
* `C-m': Fullscreen mode for current window`

* `F2`: Toggle tabbar (show function / methods window)
* `F3`: Show tasklist window
* `F4`: Toggle NerdTree (show files)

* `F5`: Comment code
* `F6`: Uncomment code

* `F7`: Delete trailing whitespace

* `F8`: Enable popup menu on autocompletion
* `F9`: Disable popup menu on autocompletion

* `F12`: Fix indentation

* `;`: Show all buffers

* `w!!`: Use sudo to save a file when you require root permissions to save
