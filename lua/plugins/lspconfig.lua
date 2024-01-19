return {
  -- add pyright to lspconfig
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        tailwindcss = {
          hovers = true,
          suggestions = true,
          root_dir = function(fname)
            local root_pattern =
              require("lspconfig").util.root_pattern("tailwind.config.cjs", "tailwind.config.js", "postcss.config.js")
            return root_pattern(fname)
          end,
        },
        pyright = {},
        ltex = {
          settings = {
            ltex = { language = "es" },
          },
        },
        emmet_language_server = {},
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "pyright",
        "docker-compose-language-service",
        "dockerfile-language-server",
        "prettierd",
        "markdownlint",
      },
    },
  },
}
