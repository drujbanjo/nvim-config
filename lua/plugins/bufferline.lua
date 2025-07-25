return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers",
        always_show_bufferline = false,
        separator_style = "none",
        show_close_icon = false,
        show_buffer_close_icons = true,
        enforce_regular_tabs = true,
        max_name_length = 30,
        tab_size = 22,
        diagnostics = "nvim_lsp",
        indicator = {
          style = "none",
        },
        offsets = {
          {
            filetype = "NvimTree",
            text = "Explorer",
            highlight = "Directory",
            text_align = "left",
          },
        },
      },

      highlights = {
        fill = {
          bg = "#15151f", -- фон всей tab-строки
        },
        background = {
          fg = "#5c5f77",
          bg = "#1b1b26", -- неактивный таб
        },
        buffer_selected = {
          fg = "#c8d3f5",
          bg = "#1e1e2e", -- активный таб
          bold = true,
        },
        buffer_visible = {
          fg = "#5c5f77",
          bg = "#1b1b26",
        },
        close_button = {
          fg = "#5c5f77",
          bg = "#1b1b26",
        },
        close_button_selected = {
          fg = "#e06c75",
          bg = "#1e1e2e",
        },
        separator = {
          fg = "#1b1b26",
          bg = "#1b1b26",
        },
        separator_selected = {
          fg = "#1e1e2e",
          bg = "#1e1e2e",
        },
        separator_visible = {
          fg = "#1b1b26",
          bg = "#1b1b26",
        },
        modified = {
          fg = "#e5c07b",
          bg = "#1b1b26",
        },
        modified_selected = {
          fg = "#e5c07b",
          bg = "#1e1e2e",
        },
      },
    })
  end,
}
