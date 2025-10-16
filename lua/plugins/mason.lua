return {
  "mason-org/mason.nvim",
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
      "prisma-language-server",
      "graphql-language-service-cli",
      -- Lua
      "lua-language-server",
      -- Rust
      "rust-analyzer",
    },
  },
}
