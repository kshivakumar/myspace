""""""" Plugins """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()
" List your plugins here
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-abolish'
Plug 'NLKNguyen/papercolor-theme'
Plug 'hashivim/vim-terraform'
call plug#end()

""""" Colorscheme customization """"""""""""""""""""""""""""""""""""""""""""""

set background=light
colorscheme PaperColor

let g:PaperColor_Theme_Options = {'language': {'python': {'highlight_builtins' : 1}}}

"""""" User config """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show line number
set number

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Add a bit extra margin to the left
" set foldcolumn=1

" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile

" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction
