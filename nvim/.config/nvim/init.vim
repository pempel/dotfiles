" Be iMproved
set nocompatible

" Disable the start screen
set shm+=I

" Set the minimum number of lines to keep above and below the cursor
set scrolloff=10

" Set the <Leader> key
let mapleader=","

" Reload the config file without closing nvim
nnoremap <Leader>r :so ~/.config/nvim/init.vim<CR>

" Load packages
packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('mhartington/oceanic-next')
call minpac#add('ryanoasis/vim-devicons')
call minpac#add('sheerun/vim-polyglot')
call minpac#add('christoomey/vim-tmux-navigator')
call minpac#add('itchyny/lightline.vim')
call minpac#add('junegunn/fzf')
call minpac#add('junegunn/fzf.vim')
call minpac#add('preservim/nerdtree')
call minpac#add('preservim/nerdcommenter')
command! Pupdate call minpac#update()
command! Pclean call minpac#clean()

" Configure lightline
let g:lightline = {
  \ 'colorscheme': 'oceanicnext',
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
nnoremap <C-p> :Files<CR>
nnoremap <C-f> :Rg<CR>
" Overwrite the :Rg command
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --glob "!*.lock" --line-number --column --no-heading --color=always --smart-case -- '.shellescape(<q-args>),
  \   1,
  \   {'options': '--delimiter : --nth 4..'},
  \   <bang>0
  \ )

" Configure nerdtree
let g:NERDTreeWinPos = 'right'
let g:NERDTreeWinSize = 40
let g:NERDTreeShowHidden = 1
nnoremap <C-t> :NERDTreeToggle<CR>

" Configure nerdcommenter
let g:NERDSpaceDelims = 1
map <C-c> <Plug>NERDCommenterToggle

" Enable file type detection
filetype plugin on

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

" Make the new window appear on the right
set splitright

" Make the new window appear below the current window
set splitbelow

" Ignore case when searching
set ignorecase

" Show search matches as you type
set incsearch

" Highlight all search matches
set hlsearch

" Clear last search highlighting
nnoremap <silent> <Esc><Esc> :noh<CR>

" Show the status line always
set laststatus=2

" Show line numbers
set number

" Automatically rebalance windows on Vim resize
autocmd VimResized * wincmd =

" Set colors
syntax enable
set termguicolors
colorscheme OceanicNext

" Set tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set backspace=2
set expandtab
set autoindent
