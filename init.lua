require("settings")
require("remap")
require("config.lazy")
require("colortheme")

vim.lsp.enable('pyright')
vim.lsp.enable('ts_ls')
vim.lsp.enable('html')
vim.lsp.enable('cssls')
vim.lsp.enable('angularls')

-- For Lua (init.lua)
vim.cmd [[
  hi Normal guibg=NONE ctermbg=NONE
  hi NormalNC guibg=NONE
]]
