return {

  {
    "williamboman/mason.nvim",

    opts = function(_, opts)
      local ensure_installed = {
        -- python
        "mypy",

        -- lua
        "luacheck",

        -- shell
        "shellcheck",

        -- yaml
        "yamllint",

        -- sql
        "sqlfluff",

        -- markdown
        "vale",

        -- see lazy.lua for LazyVim extras
      }

      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, ensure_installed)
    end,
  },
}
