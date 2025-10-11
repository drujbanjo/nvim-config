return {
  "NvChad/nvim-colorizer.lua",
  opts = {
    filetypes = { "css", "scss", "sass", "less", "html", "javascript", "typescript", "*" },
    user_default_options = {
      RGB = true, -- rgb(), rgba()
      RRGGBB = true, -- #RRGGBB
      names = false,
      mode = "background", -- или "virtualtext" если фон не нужен
      tailwind = true,
    },
  },
}
