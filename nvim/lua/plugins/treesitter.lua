return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = "main",
    build = ":TSUpdate",

    config = function()
      require("nvim-treesitter.config").setup({
        install_dir = vim.fn.stdpath("data") .. "/site",

        ensure_installed = {
          "bash",
          "c",
          "diff",
          "lua",
          "luadoc",
          "markdown",
          "markdown_inline",
          "query",
          "vim",
          "vimdoc",
          "go",
          "odin",
          "zig",
          "python",
          "printf",
          "ninja",
          "rst",
        },
        sync_install = true,
        auto_install = true,
        indent = { enable = true },
        highlight = {
          enable = true,
          disable = {},
          additional_vim_regex_highlighting = false,
        },
      })
    end,
  },
  -- {
  --   "nvim-treesitter/nvim-treesitter-textobjects",
  --   after = "nvim-treesitter",
  --   requires = "nvim-treesitter/nvim-treesitter",
  -- },
}
