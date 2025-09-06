return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    opts = {
      window = {
        width = 30,
        mappings = {
          ["<space>"] = "toggle_node",
          ["<cr>"] = "open",
        },
      },
    },
    config = function(_, opts)
      require("neo-tree").setup(opts)

      vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { desc = "Toggle NeoTree" })
      vim.keymap.set("n", "<leader>E", ":Neotree toggle<CR>", { desc = "Toggle NeoTree" })
    end,
  },
}
