return {
  "nvim-telescope/telescope.nvim",
  tag = "v0.1.9",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup({})
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "Telescope [S]earch [F]iles" })
    vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "Telescope [S]earch [G]rep" })
    vim.keymap.set("n", "<leader>sb", builtin.buffers, { desc = "Telescope [S]earch [B]uffers" })
    vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "Telescope [S]earch [H]elp" })
  end,
}
