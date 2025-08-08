return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  lazy = false,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      transparent_background = false,

      float = {
        enabled = true,
        border = "rounded",
        background = "dark",
        transparent = false,
        solid = true,
      },

      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = true,
        mini = true,
        telescope = {
          enabled = true,
        },
        neotree = true,
      },
    })

    vim.cmd.colorscheme("catppuccin")
  end,
}
