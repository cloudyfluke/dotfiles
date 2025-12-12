return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  branch = "main",
  build = ":TSUpdate",

  config = function()
    local ts = require("nvim-treesitter")

    ts.install({
      "bash",
      "c",
      "diff",
      "html",
      "json",
      "jsonc",
      "lua",
      "luadoc",
      "luap",
      "markdown",
      "markdown_inline",
      "printf",
      "python",
      "query",
      "regex",
      "toml",
      "tsx",
      "vim",
      "vimdoc",
      "xml",
      "yaml",
      "go",
      "zig",
      "odin",
    })

    ts.setup({
      highlight = {
        enable = true,
      },
    })
  end,
}
