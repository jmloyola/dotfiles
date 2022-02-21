" Don't try to be vi compatible
set nocompatible

" Colors {{{
syntax enable           " enable syntax processing
" Color scheme (terminal)
"set t_Co=256
"set background=dark
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
" put
" https://raw.github.com/altercation/vim-colors-solarized/master/colors/solarized.vim
" curl -O https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim
" in ~/.vim/colors/ and uncomment:
"colorscheme solarized
colorscheme jellybeans
" }}}

" Spaces & Tabs {{{
set tabstop=4           " 4 space tab
set expandtab           " use spaces for tabs
set softtabstop=4       " 4 space tab
set shiftwidth=4
set modelines=1
filetype indent on
filetype plugin on
set autoindent
" }}}

" UI Layout {{{
set number              " show line numbers
set showcmd             " show command in bottom bar
"set nocursorline        " highlight current line
" Highlight current line
set cursorline
set wildmenu
set lazyredraw
set showmatch           " higlight matching parenthesis
set fillchars+=vert:┃
" }}}

" Searching {{{
set ignorecase          " ignore case when searching
set smartcase
set incsearch           " search as characters are entered
set hlsearch            " highlight all matches
map <leader><space> :let @/=''<cr> " clear search
" }}}

" Encoding
set encoding=utf-8

set ai "Auto indent
set si "Smart indent

" Status bar
set laststatus=2
" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" Last line
set showmode
set showcmd

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

set textwidth=79

" For regular expressions turn magic on
set magic


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
