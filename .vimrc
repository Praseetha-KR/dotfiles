set history=700

filetype plugin on
filetype indent on

set wildmenu
" set wildignore=*.o,*~,*.pyc
set ruler
set cmdheight=2
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase
set smartcase
set hlsearch
set incsearch
set magic
set showmatch

syntax enable
colorscheme desert
set background=dark

set encoding=utf8

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

set lbr
set tw=500
set ai "Auto indent"
set si "Smart indent"
set wrap "Wrap lines"

set laststatus=2

set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

execute pathogen#infect()

autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

function! HasPaste()
    if &paste
        return 'PASTE MODE '
    en
    return ''
endfunction

