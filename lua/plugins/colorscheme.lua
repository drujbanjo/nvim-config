return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false, -- загружается немедленно при запуске
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- другие: latte, frappe, macchiato
        transparent_background = true, -- можешь поставить true, если хочешь прозрачность
        integrations = {
          -- добавь сюда свои интеграции, если хочешь
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          telescope = true,
          which_key = true,
        },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
