" Be iMproved
set nocompatible

" Set a custom leader key
let mapleader=","

" Load packages
packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('challenger-deep-theme/vim', {'name': 'challenger-deep-theme'})
call minpac#add('mhinz/vim-startify')
call minpac#add('itchyny/lightline.vim')
call minpac#add('junegunn/fzf.vim')
call minpac#add('bfontaine/Brewfile.vim')
call minpac#add('iamcco/markdown-preview.nvim', {'do': 'packloadall! | call mkdp#util#install()'})
call minpac#add('preservim/nerdtree')
call minpac#add('ryanoasis/vim-devicons')
call minpac#add('elixir-editors/vim-elixir')
command! Pupdate call minpac#update()
command! Pclean call minpac#clean()

" Configure lightline
let g:lightline = {
\ 'colorscheme': 'challenger_deep',
\ 'active': {
\   'right': [
\     ['lineinfo'],
\     ['percent'],
\     ['fileencoding']
\   ]
\ }
\ }

" Configure fzf
" Hitting <c-x> opens the file under the cursor as a horizontal split
" Hitting <c-v> opens that file as a vertical split
set rtp+=/usr/local/opt/fzf
nnoremap <C-p> :Files<CR>
nnoremap <C-f> :Rg<CR>

" Configure markdown-preview
nnoremap <C-m> :call mkdp#util#toggle_preview()<CR>

" Configure nerdtree
let g:NERDTreeWinPos = 'right'
let g:NERDTreeWinSize = 40
let g:NERDTreeShowHidden = 1
nnoremap <C-t> :NERDTreeToggle<CR>

" Enable file type detection
filetype plugin on

" Under default settings, making changes and then opening a new file will
" display `E37: No write since last change (add ! to override)`. This setting
" hides buffers instead of closing them.
set hidden

" Disable swap files
set noswapfile

" Disable timeout on <Esc>
set timeoutlen=1000
set ttimeoutlen=0

" Disable word wrapping
set nowrap

" Make the new window appear on the right
set splitright

" Make the new window appear below the current window
set splitbelow

nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-l> :wincmd l<CR>

" Ignore case when searching
set ignorecase

" Show search matches as you type
set incsearch

" Highlight all search matches
set hlsearch

" Clear last search highlighting
nnoremap <silent> <Leader><Space> :noh<CR>

" Show the status line always
set laststatus=2

" Show line numbers
set number relativenumber

" Automatically rebalance windows on Vim resize
autocmd VimResized * wincmd =

" Reload the .vimrc file without closing vim
nnoremap <Leader>r :source ~/.vimrc<CR>

" Set colors
syntax on
colorscheme challenger_deep
set termguicolors

" Set tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set backspace=2
set expandtab
set autoindent

