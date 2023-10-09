return {
  {
    "nvimtools/none-ls.nvim",
    optional = true,
    opts = function(_, opts)
      local nls = require("null-ls")
      table.insert(opts.sources, nls.builtins.formatting.prettierd)
      table.insert(opts.sources, nls.builtins.diagnostics.markdownlint)
      table.insert(opts.sources, nls.builtins.diagnostics.pylint)
      table.insert(opts.sources, nls.builtins.formatting.autopep8)
      -- table.insert(opts.sources, nls.builtins.diagnostics.golangcilint)
    end,
  },
}
