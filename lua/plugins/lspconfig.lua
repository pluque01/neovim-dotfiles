return {
  -- add pyright to lspconfig
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {},
        ltex = {
          settings = {
            ltex = { language = "es" },
          },
        },
      },
      -- setup = {
      --   ltex = {
      --       settings = {
      --         ltex = { language = "es_ES" },
      --       },
      --   },
      -- },
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
