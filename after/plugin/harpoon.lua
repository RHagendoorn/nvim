local harpoon = require("harpoon")
harpoon:setup()

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Add to Harpoon list" })
vim.keymap.set("n", "<leader>qm", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = 'Open Harpoon Quick Menu'} )

-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
        local file_paths = {}
        for _, item in ipairs(harpoon_files.items) do
                table.insert(file_paths, item.value)
        end

        require("telescope.pickers").new({}, {
                prompt_title = "Harpoon",
                finder = require("telescope.finders").new_table({
                        results = file_paths,
                }),
                previewer = conf.file_previewer({}),
                sorter = conf.generic_sorter({}),
        }):find()
end

vim.keymap.set("n", "<leader>ht", function() toggle_telescope(harpoon:list()) end,
{ desc = "Open harpoon window" })

harpoon:extend({
        UI_CREATE = function(cx)
                vim.keymap.set("n", "v", function()
                        harpoon.ui:select_menu_item({ vsplit = true })
                end, { buffer = cx.bufnr })

                vim.keymap.set("n", "h", function()
                        harpoon.ui:select_menu_item({ split = true })
                end, { buffer = cx.bufnr })

                vim.keymap.set("n", "t", function()
                        harpoon.ui:select_menu_item({ tabedit = true })
                end, { buffer = cx.bufnr })
        end,
})
