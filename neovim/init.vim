" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vimrc

call plug#begin()

" Aesthetics
Plug 'ajh17/Spacegray.vim'
Plug 'junegunn/rainbow_parentheses.vim'

" Functionality
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'neomake/neomake'

" Languages
Plug 'tpope/vim-rails'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-endwise'

Plug 'fatih/vim-go'

Plug 'hashivim/vim-terraform'
Plug 'vim-syntastic/syntastic'
Plug 'juliosueiras/vim-terraform-completion'

Plug 'tpope/vim-markdown'

Plug 'ekalinin/Dockerfile.vim'

" Plug 'dart-lang/dart-vim-plugin'
call plug#end()

""" Python3 VirtualEnv
let g:python3_host_prog = expand('~/.config/nvim/env/bin/python')

""" Colours
syntax on
colorscheme spacegray

""" Configuration
filetype plugin indent on
set relativenumber
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set ruler laststatus=2 showcmd showmode
set list listchars=trail:»,tab:»-,eol:¬
set fillchars+=vert:\ 
set wrap breakindent textwidth=79 formatoptions=qrn1 colorcolumn=80
set encoding=utf-8
set number
set title

" Leader
let mapleader = ","
let maplocalleader = "."


nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>e <C-w>s<C-w>j
nnoremap <leader><leader> <C-^>

" Press space to get rid of search highlights
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
nnoremap <c-Space> :nohlsearch

" Basic statusline
set statusline=%<%f\ %h%m%r%y%=

" Syntastic statusline
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Finalise statusline
set statusline+=%-14.(%l,%c%V%)\ %P


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Deoplete
let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.terraform = '[^ *\t"{=$]\w*'
let g:deoplete#enable_at_startup = 1
call deoplete#initialize()

" RSpec.vim mappings
map <Leader>T :call RunCurrentSpecFile()<CR>
map <Leader>t :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

""" NERDTree
" let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '↠'
let g:NERDTreeDirArrowCollapsible = '↡'
nmap <leader>q :NERDTreeToggle<CR>

" Faster Esc
inoremap jj <ESC>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RENAME CURRENT FILE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
map <leader>n :call RenameFile()<cr>

if has("termguicolors")
  set termguicolors
endif

