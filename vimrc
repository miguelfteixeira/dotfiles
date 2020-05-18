source ~/.vimrc-plugins

set encoding=utf-8
scriptencoding utf-8

" Config
set autoread
set nobackup

" UI
set number
set relativenumber
filetype indent on
set colorcolumn=120
set visualbell
colorscheme gruvbox
set cursorline

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Better search
set ignorecase
set smartcase
set hlsearch
set showmatch
set incsearch

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag -Q -l --nocolor --hidden -g "" %s'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Strip all trailing whitespace everytime you save the file: ntpeters/vim-better-whitespace
autocmd BufWritePre * StripWhitespace

" Enable matchit plugin
runtime macros/matchit.vim

" Mappings
let mapleader = ','

" Indent file
map <Leader>i mmgg=G`m

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l


" shortcuts for clipboard copy/paste
vmap <Leader>y "*y
nmap <Leader>y "*y
nmap <Leader>p "*p
nmap <Leader>P "*P
vmap <Leader>p "*p
vmap <Leader>P "*P

" Vim Tmux Runner + Vim Rspec
let g:rspec_command = "VtrSendCommandToRunner! docker-compose run --rm development bash -c 'rspec {spec}'"

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Move between open buffers.
nmap <C-n> :bnext<CR>
nmap <C-N> :bprev<CR>
