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

      -- Tailwind
      tailwindcss = {
        root_dir = function(fname)
          if type(fname) ~= "string" then
            return nil
          end

          local startpath = vim.fs.dirname(fname)
          local found = vim.fs.find("package.json", { path = startpath, upward = true })
          local pkg = found and found[1]

          if type(pkg) ~= "string" then
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

      prismals = { settings = {} },
      graphql = {},

      -- Lua
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = { checkThirdParty = false },
          },
        },
      },

      -- Rust
      rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
            cargo = { allFeatures = true },
            checkOnSave = { command = "clippy" },
          },
        },
      },
    },
  },
}
