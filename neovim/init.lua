require("config.lazy")

vim.cmd.colorscheme("flexoki")
vim.opt.relativenumber = true
vim.opt.tabstop=2
vim.opt.softtabstop=2
vim.opt.shiftwidth=2
vim.opt.expandtab=true
vim.opt.smarttab=true
vim.opt.autoindent=true
vim.opt.incsearch=true
vim.opt.ignorecase=true
vim.opt.smartcase=true
vim.opt.hlsearch=true
vim.opt.ruler=true
vim.opt.laststatus=2
vim.opt.showcmd=true
vim.opt.showmode=true
vim.opt.list=true
vim.opt.listchars= { trail = '»', tab = '»-', eol = '¬' }
vim.opt.fillchars.append = { vert = ' ' }
vim.opt.wrap=true
vim.opt.breakindent=true
vim.opt.textwidth=79
vim.opt.formatoptions='qrn1'
vim.opt.colorcolumn={ 80 }
vim.opt.encoding='utf-8'
vim.opt.number=true
vim.opt.title=true

vim.api.nvim_set_keymap('n', '<Leader>w', '<C-w>v<C-w>l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>e', '<C-w>s<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><leader>', '<C-^>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Space>', ':nohlsearch<Bar>:echo<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<c-Space>', ':nohlsearch', { noremap = true, silent = true })

require('lualine').setup()

vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { noremap = true })


vim.cmd([[

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


function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

]])
