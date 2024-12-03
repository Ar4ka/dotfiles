-- https://www.lazyvim.org/plugins/lsp

return {

  -- change mason config
  -- note: don't forget to update treesitter for languages
  {
    "williamboman/mason.nvim",

    opts = function(_, opts)
      local ensure_installed = {
        -- python
        "ruff-lsp",
        "pyright",

        -- lua
        "lua-language-server",

        -- shell
        "bash-language-server",

        -- docker
        "dockerfile-language-server",

        -- rust
        "rust-analyzer",

        --svelte
        "svelte-language-server",

        -- vue
        "vue-language-server",

        -- php
        "intelephense",
        -- see lazy.lua for LazyVim extras
      }

      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, ensure_installed)
    end,
  },
}
