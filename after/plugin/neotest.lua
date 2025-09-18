vim.keymap.set("n", "<leader>tt", function()
  require("neotest").run.run()
end, { desc = 'Run test under cursor'})

vim.keymap.set("n", "<leader>tf", function()
  require("neotest").run.run(vim.fn.expand("%"))
end, { desc = 'Run alltests in file'})

vim.keymap.set("n", "<leader>to", function()
  require("neotest").output.open({ enter = true })
end, { desc = 'Open output window for the last test run'})

vim.keymap.set("n", "<leader>ts", function()
  require("neotest").summary.toggle()
end, { desc = 'Toggle test summary panel'})

