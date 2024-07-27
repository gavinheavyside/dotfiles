return {
  "janko-m/vim-test",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd([[
      nmap <Leader>T :TestNearest<CR>
      nmap <Leader>t :TestNearest<CR>
      nmap <Leader>l :TestLast<CR>
      nmap <Leader>a :TestSuite<CR>
    ]])
  end,
}
