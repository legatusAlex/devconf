-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring pyright with custom settings
lspconfig.pyright.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  settings = {
    python = {
      pythonPath = vim.fn.getcwd() .. "/.venv/bin/python",
      analysis = {
        autoSearchPaths = false,
        useLibraryCodeForTypes = true,
        diagnosticMode = "openFilesOnly",
        autoImportCompletion = false,
        typeCheckingMode = "off",
      },
    },
  },
}

