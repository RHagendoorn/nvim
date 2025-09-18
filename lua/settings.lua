vim.keymap.set('i', 'jk', '<Esc>', { noremap = true, silent = true })

-- Basic options
vim.opt.compatible = false
vim.cmd('syntax on')

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.undofile = true
vim.o.splitright = true

-- Auto-save on InsertLeave and TextChanged, also on FocusLost
vim.api.nvim_create_autocmd({'InsertLeave', 'TextChanged'}, {
  pattern = '*',
  command = 'silent! wall',
})
vim.api.nvim_create_autocmd('FocusLost', {
  pattern = '*',
  command = 'silent! wall',
})

-- tab and indent
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.o.encoding = "utf-8"
vim.o.fileencoding = "utf-8"
vim.opt.fileencodings = { "utf-8" }

