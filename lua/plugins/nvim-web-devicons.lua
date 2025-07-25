return {
  "nvim-tree/nvim-web-devicons",
  priority = 1000,
  config = function()
    require("nvim-web-devicons").setup({
      override_by_filename = {
        ["next.config.ts"] = {
          icon = "",
          color = "#ffffff",
          name = "NextConfi",
        },
        ["next.config.js"] = {
          icon = "",
          color = "#ffffff",
          name = "NextConfig",
        },
      },
    })
  end,
}
