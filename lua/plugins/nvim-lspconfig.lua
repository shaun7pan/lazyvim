return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {},
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              inlayHints = {
                closureCaptureHints = {
                  enable = true,
                },
              },
              checkOnSave = {
                command = "clippy",
              },
              cargo = {
                allFeatures = true,
              },
            },
          },
        },
      },
    },
  },
}
