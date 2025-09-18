require('diffview').setup({
  keymaps = {
    file_panel = {
      ['t'] = '<cmd>DiffviewFileHistoryOpen<CR>',
    },
    view = {
      ['t'] = '<cmd>DiffviewOpen<CR>',
    },
  },
})

