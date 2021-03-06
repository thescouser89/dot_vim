Dustin's vim config files
===========================

This config file is based on the `vundle` plugin to keep all the other plugins
up-to-date.

Instructions:
-------------

    git clone git://github.com/thescouser89/dot_vim.git
    cd dot_vim

**Important**: Run the setup.sh script:

    sh setup.sh

**Warning**: This will delete your `~/.vim` folder and your `~/.vimrc` file.

After that, open `vim` and run the command: `:BundleInstall` to install all the
plugins.


To update the plugins: run the command: `:BundleUpdate`

Keybindings:
------------

* `C-t`: Switch between buffers

* `C-n`: Open a new window [tiled]
* `C-j`: Jump to next window
* `C-k`: Jump to previous window
* `C-Space`: Place current window as master
* `C-m`: Fullscreen mode for current window

* `F2`: Toggle tagbar (show function / methods window)
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
