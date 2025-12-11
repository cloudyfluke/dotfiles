return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "mason.nvim",
    { "mason-org/mason-lspconfig.nvim", config = function() end },
    { "j-hui/fidget.nvim", opts = {} },
    "saghen/blink.cmp",
  },

  config = function()
    require("fidget").setup({})
    require("mason").setup()
    local servers = {
      lua_ls = {
        settings = {
          Lua = {
            completion = {
              callSnippet = "Replace",
            },
          },
        },
      },
      gopls = {},
      ols = {},
      zls = {},
    }
    local capabilities = require("blink.cmp").get_lsp_capabilities()

    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
        "gopls",
        "ols",
        "zls",
      },
      automatic_installation = false,

      handlers = {
        function(server_name)
          local server = servers[server_name] or {}
          server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
          require("lspconfig")[server_name].setup(server)
        end,
      },
    })
  end,
}
