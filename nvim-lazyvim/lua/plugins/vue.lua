return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        volar = {
          init_options = {
            vue = {
              hybridMode = false,
            },
          },
          typescript = {
            tsdk = "node_modules/typescript/lib",
          },
        },
        vtsls = {},
      },
    },
  },
}
