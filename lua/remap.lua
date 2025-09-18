local opts = { noremap = true, silent = false }  -- silent=false so the command-line shows up

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", "<CMD>Oil<CR>")
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("i", "jk", "<Esc>")

-- Use <leader>w + h/j/k/l to move between splits
vim.keymap.set('n', '<leader>wh', '<C-w>h', opts)
vim.keymap.set('n', '<leader>wj', '<C-w>j', opts)
vim.keymap.set('n', '<leader>wk', '<C-w>k', opts)
vim.keymap.set('n', '<leader>wl', '<C-w>l', opts)

-- Or cycle to the next window
vim.keymap.set('n', '<leader>ww', '<C-w>w', opts)

-- Or close the current window
vim.keymap.set('n', '<leader>wc', '<C-w>c', opts)

-- Or split horizontally and vertically
vim.keymap.set('n', '<leader>ws', '<C-w>s', opts) -- horizontal split
vim.keymap.set('n', '<leader>wv', '<C-w>v', opts) -- vertical split

vim.keymap.set('n', '<leader>gs', ':vertical G<CR>')
vim.keymap.set('n', '<leader>dv', ':DiffviewOpen<CR>')
vim.keymap.set('n', '<leader>td', ':Telescope diagnostics<CR>')
vim.keymap.set('n', '<leader>tv', ':vsplit | terminal<CR>')

vim.keymap.set('n', '<leader>sg', ':%s//g<Left><Left>', opts)
vim.keymap.set('n', '<leader>vs', ':vsplit<CR>')
vim.keymap.set('n', '<leader>hs', ':split<CR>')
vim.keymap.set('n', '<leader>no', ':nohlsearch<CR>')

-- theprimeagen
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set('n', 'Q', "magg=G`a")

vim.keymap.set('n', '<leader>tc', ':tabclose<CR>')
