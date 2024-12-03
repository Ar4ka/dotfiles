return {

	{
		"williamboman/mason.nvim",

		opts = function(_, opts)
			local ensure_installed = {
				-- python
				"black",

				-- lua
				"stylua",

				-- shell
				"shfmt",

				-- yaml
				"yamlfix",
				"yamlfmt",

				-- rust
				-- rustfmt via rustup

				-- see lazy.lua for LazyVim extras
			}

			opts.ensure_installed = opts.ensure_installed or {}
			vim.list_extend(opts.ensure_installed, ensure_installed)
		end,
	},
	{
		"stevearc/conform.nvim",
		lazy = true,
		event = { "BufReadPre", "BufNewFile" },
		opts = {
			formatters_by_ft = {
				php = { "php-cs-fixer" },
			},
			formatters = {
				["php-cs-fixer"] = {
					command = "php-cs-fixer",
					args = {
						"fix",
						"--rules=@PSR12", -- Formatting preset. Other presets are available, see the php-cs-fixer docs.
						"$FILENAME",
					},
					stdin = false,
				},
			},
			notify_on_error = true,
		},
	},
}
