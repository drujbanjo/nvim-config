return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      -- Python
      "pyright",
      "ruff",

      -- JavaScript / TypeScript
      "typescript-language-server",
      "eslint-lsp",
      "prettier",
      "tailwindcss-language-server",

      -- Lua
      "lua-language-server",
    },
  },
}
