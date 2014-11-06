" Size "
"======"
set lines=40              " Number of lines of the Vim window.
set columns=120           " Number of columns of the screen.

" Appearance "
"============"
set background=dark       " Vim will try to use colors that looks good on the specified backgound
colorscheme solarized     " Load color scheme

" GUI Options "
"============="
" Use -= to hide widget
" Use += to display widget
set guioptions-=m         " Hide menu bar
set guioptions-=T         " Hide toolbar


"========="
" Plugins "
"========="

" NERDTree "
"=========="
autocmd vimenter * NERDTree   " Open NERDTree automatically when vim starts up
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let g:NERDTreeWinPos="right"  " Open NERDTree on the right
