return {
  "stevedylandev/flexoki-nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("flexoki").setup()
  end,
}
