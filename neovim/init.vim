" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vimrc

call plug#begin()

" Aesthetics
Plug 'ajh17/Spacegray.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'


Plug 'rafi/awesome-vim-colorschemes'
Plug 'TheAtlasEngine/PastelColors'

" Functionality
" Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

" Async autocompletion
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Completion from other opened files
" Plug 'Shougo/context_filetype.vim'
" Python autocompletion
" Plug 'zchee/deoplete-jedi', { 'do': ':UpdateRemotePlugins' }
" Just to add the python go-to-definition and similar features, autocompletion
" from this plugin is disabled
" Plug 'davidhalter/jedi-vim'


Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-html', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-solargraph', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'felippepuhle/coc-graphql', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'neomake/neomake'

Plug 'janko-m/vim-test'
Plug 'tpope/vim-dispatch'

Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

" Languages
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'

Plug 'fatih/vim-go'

Plug 'hashivim/vim-terraform'
Plug 'vim-syntastic/syntastic'
Plug 'juliosueiras/vim-terraform-completion'
Plug 'jparise/vim-graphql'

Plug 'tpope/vim-markdown'

Plug 'ekalinin/Dockerfile.vim'

Plug 'dart-lang/dart-vim-plugin'

Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

" Python
"
Plug 'fisadev/vim-isort'

" ReasonML / Bucklescript
Plug 'reasonml-editor/vim-reason-plus'
" Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }

call plug#end()

""" Python3 VirtualEnv
let g:python3_host_prog = expand('/Users/gavin/.asdf/shims/python')

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

let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++17 -stdlib=libc++'
let g:syntastic_cpp_check_header = 1

" let g:LanguageClient_serverCommands = {
"   \ 'reason': ['/Users/gavin/bin/reason-language-server/reason-language-server.exe'],
"   \ 'python': ['/Users/gavin/.asdf/shims/pyls'],
" \ }

" LeaderF
"let g:Lf_ShortcutF = '<C-f>'

" Deoplete
" let g:deoplete#omni_patterns = {}
" let g:deoplete#omni_patterns.terraform = '[^ *\t"{=$]\w*'
" let g:deoplete#enable_at_startup = 1
" call deoplete#initialize()

" RSpec.vim mappings
" map <Leader>T :call RunCurrentSpecFile()<CR>
" map <Leader>t :call RunNearestSpec()<CR>
" map <Leader>l :call RunLastSpec()<CR>
" map <Leader>a :call RunAllSpecs()<CR>
nmap <Leader>t :TestNearest<CR>
nmap <Leader>T :TestFile<CR>
nmap <Leader>a :TestSuite<CR>
nmap <Leader>l :TestLast<CR>

" Press this with terminal output to enter normal mode so you can scroll
" through terminal output
if has('nvim')
  tmap <C-o> <C-\><C-n>
end


""" NERDTree
" let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '↠'
let g:NERDTreeDirArrowCollapsible = '↡'
nmap <leader>q :NERDTreeToggle<CR>

""" Others
nmap <leader>g :Goyo<CR>
nmap <leader>h :RainbowParentheses!!<CR>
nmap <leader>l :Limelight!!<CR>
xmap <leader>l :Limelight!!<CR>


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


""""
" coc.nvim "
""""
" use tab to trigger completion and pick the selected
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" format the current file with <leader>p
nmap <leader>p :CocCommand prettier.formatFile<CR>
