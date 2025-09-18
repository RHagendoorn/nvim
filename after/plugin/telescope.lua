local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fa', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>ff', builtin.git_files, { desc = 'Telescope git files' })
vim.keymap.set('n', '<leader>tg', builtin.git_status, { desc = 'Telescope git status' })

vim.keymap.set('n', '<leader>gp', function()
        builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = 'Grep' })

vim.keymap.set('n', '<leader>km', require('telescope.builtin').keymaps, { desc = 'Telescope: Show keymaps' })

local function get_oil_dir()
  local bufname = vim.api.nvim_buf_get_name(0)
  if bufname:match("^oil://") then
    -- Remove the 'oil://' prefix to get the real path
    local dir = bufname:gsub("^oil://", "")
    -- Sometimes there might be a trailing slash, remove it
    dir = dir:gsub("/$", "")
    return dir
  end
  return nil
end

vim.keymap.set('n', '<leader>gf', function()
  local oil_dir = get_oil_dir()
  local fallback_dir = vim.fn.expand('%:p:h')
  local cwd = vim.fn.getcwd()

  local search_dir = oil_dir or fallback_dir or cwd

  -- For debugging, uncomment the next line to verify the directory used
  -- print("Searching in directory: " .. search_dir)

  local search = vim.fn.input("Grep (Oil dir or file dir) > ")

  builtin.live_grep({
    search_dirs = { search_dir },
    default_text = search,
  })
end, { desc = 'Grep from Oil directory or file directory' })

