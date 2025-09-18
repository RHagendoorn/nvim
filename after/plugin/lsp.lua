local lspconfig = require("lspconfig")

-- Add nvim-cmp capabilities
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.ts_ls.setup({
  capabilities = capabilities,
  on_attach = function(_, bufnr)
    local nmap = function(keys, func, desc)
      if desc then

        desc = 'LSP: ' .. desc
      end
      vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
    end
    nmap("<leader>dc", vim.lsp.buf.declaration, "declarion")
    nmap("<leader>gd", vim.lsp.buf.definition, "Goto Definition")
    nmap("<leader>gi", vim.lsp.buf.implementation, "Goto Implementation")
    nmap("<leader>gr", vim.lsp.buf.references, "Goto Reference")
    nmap("<leader>ho", vim.lsp.buf.hover, "Hover documentation")
    nmap("<leader>rn", vim.lsp.buf.rename, "Rename")
    nmap("<leader>of", vim.diagnostic.open_float, "Open Float")
    nmap("<leader>ca", vim.lsp.buf.code_action, "Code Action")
    nmap("<leader>sh", vim.lsp.buf.signature_help, "Signature help")
    vim.keymap.set('n', '<leader>ds', function()
            vim.cmd('vsplit')             
            vim.lsp.buf.definition()      
    end, { noremap = true, silent = true, desc = "Open Defition in vsplit" })

  end,
})

-- HTML
lspconfig.html.setup{}

-- CSS
lspconfig.cssls.setup{}

-- Angular
lspconfig.angularls.setup{
  on_new_config = function(new_config, new_root_dir)
    new_config.cmd = {
      "ngserver",
      "--stdio",
      "--tsProbeLocations",
      new_root_dir,
      "--ngProbeLocations",
      new_root_dir
    }
  end,
  filetypes = { "html", "typescript", "typescriptreact" },
  root_dir = lspconfig.util.root_pattern("angular.json", ".git")
}

