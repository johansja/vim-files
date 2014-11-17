set nocompatible    " Make Vim behave in a more useful way

" Vundle "
"========"
filetype off        " Does not always reflect current file type.
set rtp+=~/.vim/bundle/Vundle.vim " List of directories which will be searched for runtime files
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'bling/vim-bufferline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'

Plugin 'derekwyatt/vim-scala'
Plugin 'groenewege/vim-less'

call vundle#end()
filetype plugin indent on

" General Config "
"================"
set number          " Print the line number in front of each line
set backspace=indent,eol,start  " Influences the working of backspace in Insert mode
set visualbell      " Use visual bell instead of beeping
set autoread        " When a file has been detected to hav been changed outside of Vim and it has not been changed inside of Vim, automatically read it again
set hidden          " Buffer becomes hidden when it is abandoned
syntax on           " Syntax with this name is loaded

" Searching "
"==========="
set ignorecase      " Ignore case in search patterns.
set smartcase       " Override the 'ignorecase' option if the search pattern contains upper case characters.

" Indentation "
"============="
set autoindent      " Copy indent from current line when starting a new line
set smartindent     " Do smart autoindenting when starting a new line
set smarttab        " A <tab> in front of a line inserts blank

filetype plugin on  " Load the plugin file for a specific file type
filetype indent on  " Load the indent file for a specific file type

set list            " List mode: useful to see difference between tabs and spaces and for trailing blanks.
set listchars=tab:>-,trail:·   " String to use in 'list' mode

set nowrap          " Only part of long lines will be displayed

" Searching "
"==========="
set incsearch       " While typing a search command, show where the pattern, as it was typed so far, matches.
set hlsearch        " When there is a previous search pattern, highlight all its matches.

" Highlights "
"============"
set cursorline      " Highlight the screen line of the cursor
set cursorcolumn    " Highlight the screen column of the cursor
set colorcolumn=78,79,80  " Screen columns that are highlighted. Useful to align text.

" Scrolling "
"==========="
set scrolloff=5     " Minimal number of screen lines to keep above and below the cursor
set sidescrolloff=10    " Minimal number of screen columns to keep to the left and to the right of the cursor if 'nowrap' is set
set sidescroll=1    " Minimal number of columns to scroll horizontally

" File cleanup "
"=============="
" Clean trailing whitespaces when starting to write the buffer to a file
autocmd BufWritePre * :%s/\s\+$//e


"========="
" Plugins "
"========="

" vim-airline "
"============="
set laststatus=2    " Statusline appears all the time
" Automatically displays all buffers when there's only one tab open.
let g:airline#extensions#tabline#enabled=1
