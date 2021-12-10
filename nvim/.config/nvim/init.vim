" Be iMproved
set nocompatible

" Set the <Leader> key
let mapleader=","

" Reload the nvim configuration without closing it
nnoremap <Leader>r :so ~/.config/nvim/init.vim<CR>

" Switch to another tmux session
nnoremap <C-s> :! tmux new-window tmux-sessionizer<CR><CR>

" Clear last search highlighting
nnoremap <silent> <Esc><Esc> :noh<CR>

" Load packages
packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('sainnhe/everforest')
call minpac#add('ryanoasis/vim-devicons')
call minpac#add('sheerun/vim-polyglot')
call minpac#add('christoomey/vim-tmux-navigator')
call minpac#add('jremmen/vim-ripgrep')
call minpac#add('itchyny/lightline.vim')
call minpac#add('preservim/nerdtree')
call minpac#add('preservim/nerdcommenter')
command! Pupdate call minpac#update()
command! Pclean call minpac#clean()

" Configure fzf
set rtp+=~/.fzf
let g:fzf_action = { 'ctrl-x': 'split', 'ctrl-v': 'vsplit' }
let g:fzf_layout = {
  \   'window': {
  \     'width': 1.0,
  \     'height': 0.5,
  \     'relative': v:true,
  \     'yoffset': 1.0
  \   }
  \ }
nnoremap <C-p> :FZF<CR>

" Configure ripgrep
let g:rg_command = 'rg --vimgrep --hidden --glob "!.git/"'
nnoremap <C-f> :Rg 

" Configure lightline
let g:lightline = {
  \   'colorscheme': 'everforest',
  \   'component': {
  \     'lineinfo': "%{line('.') . '/' . line('$') . ':' . col('.')}"
  \   },
  \   'active': {
  \     'left': [['mode', 'paste'], ['readonly', 'relativepath', 'modified']],
  \     'right': [['lineinfo'], ['fileencoding']]
  \   }
  \ }

" Configure nerdtree
let g:NERDTreeWinPos = 'right'
let g:NERDTreeWinSize = 40
let g:NERDTreeShowHidden = 1
let g:NERDTreeMapOpenSplit = 's'
let g:NERDTreeMapOpenVSplit = 'v'
nnoremap <C-t> :NERDTreeToggle<CR>

" Configure nerdcommenter
let g:NERDSpaceDelims = 1
map <C-c> <Plug>NERDCommenterToggle

" Set colors
syntax enable
set termguicolors
colorscheme everforest
let g:everforest_background = 'hard'

" Enable file type detection
filetype plugin on

" Disable the start screen
set shm+=I

" Set the minimum number of lines to keep above and below the cursor
set scrolloff=8

" Under default settings, making changes and then opening a new file
" will display `E37: No write since last change (add ! to override)`.
" This setting hides buffers instead of closing them.
set hidden

" Disable swap files
set noswapfile

" Disable timeout on <Esc>
set timeoutlen=1000
set ttimeoutlen=0

" Disable word wrapping
set nowrap

" Make the new window appear below the current window
set splitbelow

" Make the new window appear on the right
set splitright

" If a search pattern contains upper case characters, search is case sensitive.
" Otherwise, it is not.
set ignorecase
set smartcase

" Turn off the highlighted matches
set nohlsearch

" Show the status line always
set laststatus=2

" Show line numbers
set number

" Highlight the current line
set cursorline

" Automatically rebalance windows on Vim resize
autocmd VimResized * wincmd =

" Set tab settings
set tabstop=2
set softtabstop=2
set shiftwidth=2
set backspace=2
set expandtab
set autoindent
