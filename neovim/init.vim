":qrn1:qrn1 set runtimepath^=~/.vim runtimepath+=~/.vim/after
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
Plug 'macguirerintoul/night_owl_light.vim'

" Functionality
" Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

" Copilot
Plug 'github/copilot.vim'

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-html', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-solargraph', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'amiralies/coc-elixir', {'do': 'yarn install && yarn prepack'}

Plug 'neomake/neomake'

Plug 'janko-m/vim-test'
Plug 'tpope/vim-dispatch'

Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

" Languages
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'

Plug 'fatih/vim-go'

Plug 'hashivim/vim-terraform'

Plug 'tpope/vim-markdown'

Plug 'ekalinin/Dockerfile.vim'

Plug 'yuezk/vim-js'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'

" Elixir
Plug 'elixir-editors/vim-elixir'

" Linting and formatting
Plug 'dense-analysis/ale'

call plug#end()

""" Python3 VirtualEnv
" let g:python3_host_prog = expand('~/.asdf/shims/python')

" ALE formatting and linting
let g:ale_fixers = {
\  'elixir': ['mix_format']
\}

""" Colours
syntax on
"colorscheme night_owl_light
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

" Finalise statusline
set statusline+=%-14.(%l,%c%V%)\ %P


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
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" format the current file with <leader>p
nmap <leader>p :CocCommand prettier.formatFile<CR>

" fzf
set rtp+=/usr/local/opt/fzf

