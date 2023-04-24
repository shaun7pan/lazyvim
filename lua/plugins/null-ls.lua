return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      table.insert(opts.sources, nls.builtins.formatting.prettierd)
      table.insert(opts.sources, nls.builtins.formatting.stylua)
      table.insert(
        opts.sources,
        nls.builtins.formatting.shfmt.with({
          extra_args = { "-i", "2", "-ci" },
        })
      )
      table.insert(opts.sources, nls.builtins.code_actions.shellcheck)
      table.insert(opts.sources, nls.builtins.formatting.goimports)
      table.insert(opts.sources, nls.builtins.diagnostics.golangci_lint)
      table.insert(opts.sources, nls.builtins.formatting.black)
      table.insert(opts.sources, nls.builtins.formatting.rustfmt)
      table.insert(opts.sources, nls.builtins.formatting.jq)
      table.insert(opts.sources, nls.builtins.formatting.terraform_fmt)
    end,
  },
}
