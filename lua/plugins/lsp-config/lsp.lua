return function()
  local capabilities = require("cmp_nvim_lsp").default_capabilities()

  local servers = {
    lua_ls = {},
    jdtls = {},
    clangd = {},
    ast_grep = {},
    rust_analyzer = {},
    qmlls = {},
    neocmake = {
      cmd = { "neocmakelsp", "stdio" },
    },
  }

  for name, config in pairs(servers) do
    config.capabilities = capabilities

    vim.lsp.config(name, config)
    vim.lsp.enable(name)
  end
end
