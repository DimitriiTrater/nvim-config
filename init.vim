set mouse=a		            " enable mouse click
set mouse=v                 " middle-click paste with 
set noswapfile		        " disable creating a swap file
set nocompatible	        " disable compatibility
set showmatch   	        " show matching
set ignorecase              " case insensitive 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style
filetype plugin indent on   " allow auto-indenting depending on file type
syntax on                   " highlighting syntax
set clipboard=unnamedplus   " using system clipboard 
filetype plugin on 
set cursorline              " highlight current cursorline
set ttyfast                 " speed up scrolling in Vim
set backupdir=~/.cache/vim  " backup dir

call plug#begin("~/.vim/plugged")
 " Plugin section
 Plug 'dracula/vim'
 Plug 'ryanoasis/vim-devicons'
 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


autocmd VimEnter * NERDTree | wincmd p

" color schemes
if (has("termguicolors"))
 set termguicolors
endif
 syntax enable

" colorscheme evening
colorscheme dracula

" open new split panes to right and below
set splitright
set splitbelow

" open file in a text by placing text and gf
nnoremap gf :vert winc f<cr>
"copies filepath to clipboard by pressing yf
nnoremap <silent> yf :let @+=expand('%:p')<CR>
" copies pwd to clipboard: command yd
nnoremap <silent> yd :let @+=expand('%:p:h')<CR>

"Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif


nnoremap <C-s> :w!
nnoremap <C-S> :w!

nnoremap <C-v> :p
nnoremap <C-V> :p

nnoremap <C-j> : !python3 %





