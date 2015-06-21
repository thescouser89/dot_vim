 set nocompatible               " be iMproved
 filetype off                   " required!
 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()
 " let Vundle manage Vundle
 " required!
 Bundle 'gmarik/vundle'

 " My Bundles here:

 " Colorscheme
 Bundle 'matthewtodd/vim-twilight'

 " Fancy bottom bar
 Bundle 'bling/vim-airline'

 " Show compilation mistakes
 Bundle 'scrooloose/syntastic'

 " Show tree of folder
 Bundle 'scrooloose/nerdtree'

 " Add and remove comments
 Bundle 'scrooloose/nerdcommenter'

 " Show indent marks
 Bundle 'nathanaelkane/vim-indent-guides'

 " Show function / method list
 Bundle 'majutsushi/tagbar'

 " Close opening ( or { or ...
 Bundle 'jiangmiao/auto-pairs'

" fugitive - git plugin
Bundle 'tpope/vim-fugitive'

 " Terminates ifs with ends -- ruby
 Bundle 'tpope/vim-endwise'

 " Markdown runtime files
 Bundle 'tpope/vim-markdown'

 " Remove whitespace at the end
 Bundle 'bronson/vim-trailing-whitespace'

 " Fuzzy file finder
 Bundle 'kien/ctrlp.vim'

 " show buffers in bottom line
 Bundle 'bling/vim-bufferline'

 " Show TODOs
 Bundle 'TaskList.vim'

 " Ruby vim syntax
 Bundle "vim-ruby/vim-ruby"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Configurations

" Result is that when a file is edited its plugin file is loaded (if detected)
filetype plugin indent on
set encoding=utf-8

" Custom tab indentation for some files
" Doesn't work that well
autocmd Filetype html setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype scala setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 sts=2 expandtab

" to get syntax highlighting
syntax on

" Uses indent form previous line for a newly created file
"
" autoindent does nothing more than copy the indentation of the previous line,
" when starting a new line
set autoindent

" smartindent automatically inserts one extra level of indentation is some
" cases, and works for C-like files.
set smartindent

" cindent is more customizable, but also more strict when it comes to syntax
" When it comes to C and C++, file type based indentations automatically sets
" cindent and for that reason, there is no need to set cindent manually for
" such files
"

" This setting is used for indentation purely with hard tabs

" tabstop       : changes the width of the TAB character
" shiftwidth: affects what happens when you press >>, << or ==. It also
" affects how automatic indentation works
" set tabstop=4
" set shiftwidth=4

" For indentation without hard tabs - spaces are introduced instead of tabs
" To reinsert tabs while edting, then use that command: set expandtab!
" Use:
set expandtab
set shiftwidth=4
set softtabstop=4

" expandtab affects what happens when you press the <TAB> key. If set,
" pressing the <TAB> key will always insert 'softtabstop' amount of space
" characters. Otherwise the amount of spaces inserted is minimized by using
" TAB characters.

" it can reduce the need for %, the cursor will briefly jump to the matching
" brace when you insert one
set showmatch

" Always show current position
set ruler

" Vim display the match while you are typing it
set incsearch

" Highlighting matches
" set hlsearch

" Ignore case when doing search
set ignorecase

" if search pattern pattern contains upper-case characters, then vim will
" assume that you want a case-sensitive search and will do its matching
" accordingly
set smartcase

" Function keys that start with an <Esc> are recognized in Insert mode
set esckeys

" To be able to see what mode you are in
set showmode

" Show numbers
set nu

" Show numbers relative to the cursor
" set rnu

" Minimal number of screen lines to keep above and below the cursor
" default is off or scrolloff=0
set scrolloff=2

" This will enables a menu at the bottom of the vim window
set wildmenu

" Get name file as bash title
set title

" wildmode enable autocompletion of commands; when in command mode press :spe
" and the <TAB> - first tab a list of completions will be shown and the
" command will be completed to the longest common commandl
"                               - second tab the wildmenu will show up witha ll the
"                               completions that were listed before
set wildmode=list:longest,full

" To enable full mouse support in the console
" Have full mouse, scroll, wheel support
set mouse=a

" wrap the text after 80 characters
" set nowrap

set list listchars=tab:>·,trail:·,extends:>,precedes:<

"Folding
" set foldmethod=syntax
" set foldcolumn=3
" set foldlevelstart=99
" highlight Folded ctermbg=darkgrey ctermfg=grey
" highlight FoldColumn ctermbg=darkgrey ctermfg=grey
" nnoremap <silent> <Space> @=(foldlevel('.')?'za':'l')<CR>

" the menu color
hi Pmenu ctermfg=white ctermbg=darkgrey guibg=#444444

" the menu slected color
hi PmenuSel ctermfg=white ctermbg=darkblue guibg=#555555 guifg=#ffffff

" Set a line after 81 colums
set colorcolumn=81

" To highlight text that is above the 80 character limit
" FIXME: Doesn't work
" highlight OverLength ctermbg=blue ctermfg=white guibg=#592929
" match OverLength /\%>80v.\+/

" Copy and paste everything from system's clipboard
set clipboard=unnamedplus

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme twilight
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" powerline configuration

" show the line
set laststatus=2

" Get some colors
set t_Co=256
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-indent-guides configuration
au VimEnter * :IndentGuidesEnable
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors=0
let g:indent_guides_color_change_percent=5
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=red ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=magenta
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fix stupid html formatting where it does not indent html, body, etc tags
let g:html_indent_inctags = "html,body,head,tbody"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Done so that the searched term is very clear
highlight Search ctermbg=LightBlue

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tagbar
" let g:tagbar_left=1
let g:tagbar_autofocus=1
let g:tagbar_autoclose=1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NerdTree Commenter
let g:NERDSpaceDelims=1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" bufferline
let g:bufferline_echo = 0
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctrlp
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bindings
" to switch between buffers
:nmap <C-t> :e#<CR>

" Tagbar
nmap <silent> <F2> :TagbarToggle<CR>

" TaskList
map <F3> <Leader>t

" NerdTree
" toggle NerdTree
nnoremap <silent> <F4> :NERDTreeToggle<CR>

" NerdCommenter
map <F5> <plug>NERDCommenterSexy
map <F6> <plug>NERDCommenterUncomment

" Fix whitespace
nnoremap <F7> :FixWhitespace<CR>

" To fix indentation
map <F12> mzgg=G`z<CR>

" ZoomWin
map <c-m> <c-w>o

" Ctrl-p
nmap ; :CtrlPBuffer<CR>

" Dirty hack to save with sudo
cmap w!! %!sudo tee > /dev/null %
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"improve autocomplete menu color
" highlight Pmenu ctermbg=238 gui=bold


" conceal is used to replace text 'lambda' with 'λ'
au VimEnter * syntax keyword Statement lambda conceal cchar=λ
au VimEnter * hi! link Conceal Statement
au VimEnter * set conceallevel=2

" so that we can switch between unsaved buffers
set hidden
