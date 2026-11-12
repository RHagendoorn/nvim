-- after/plugin/dap_keymaps.lua
local dap = require("dap")

-- Keybindings for nvim-dap
vim.keymap.set("n", "<leader>co", function() dap.continue() end, { noremap = true, silent = true, desc = "DAP: Continue" })
vim.keymap.set("n", "<leader>dt", function() dap.toggle_breakpoint() end, { noremap = true, silent = true, desc = "DAP: Toggle Breakpoint" })
vim.keymap.set("n", "<leader>do", function() dap.step_over() end, { noremap = true, silent = true, desc = "DAP: Step Over" })
vim.keymap.set("n", "<leader>di", function() dap.step_into() end, { noremap = true, silent = true, desc = "DAP: Step Into" })
vim.keymap.set("n", "<leader>du", function() dap.step_out() end, { noremap = true, silent = true, desc = "DAP: Step Out" })
vim.keymap.set("n", "<leader>dr", function() dap.repl.open(nil, "vsplit") end, { noremap = true, silent = true, desc = "DAP: Open REPL (Side)" })

