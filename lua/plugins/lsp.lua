return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- Python
      pyright = {
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "strict",
              autoImportCompletions = true,
            },
          },
        },
      },
      ruff = {
        init_options = {
          settings = {
            args = { "--fix", "--select=F,E" },
          },
        },
      },

      -- JavaScript / TypeScript
      tsserver = {
        settings = {
          javascript = { format = { enable = false } },
          typescript = { format = { enable = false } },
        },
      },
      eslint = {
        settings = {
          format = true,
        },
      },
      tailwindcss = {
        root_dir = function(fname)
          local startpath = vim.fs.dirname(fname)
          local pkg = vim.fs.find("package.json", { path = startpath, upward = true })[1]
          if not pkg then
            return nil
          end

          local pkg_dir = vim.fs.dirname(pkg)
          local content = vim.fn.readfile(pkg)
          for _, line in ipairs(content) do
            if line:match('"tailwindcss"') then
              return pkg_dir
            end
          end
          return nil
        end,
      },

      prismals = {
        -- можно добавить настройки, если нужно
        settings = {},
      },

      -- Lua
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = { checkThirdParty = false },
          },
        },
      },
    },
  },
}
