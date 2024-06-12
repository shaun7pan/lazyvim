return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "bash-language-server",
        "black",
        "dockerfile-language-server",
        "goimports",
        "golangci-lint",
        "gopls",
        "jq",
        "lua-language-server",
        "pyright",
        -- "rust-analyzer",
        "shellcheck",
        "shfmt",
        "stylua",
        "terraform-ls",
        "tflint",
        "yamlfmt",
      },
    },
  },
}
