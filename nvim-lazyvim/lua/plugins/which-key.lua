return {
	-- Modify which-key keys
	{
		"folke/which-key.nvim",
		opts = function()
			local wk = require("which-key")
			wk.add({
				{ "<leader>gb", group = "blame" },
				{ "<leader>gd", group = "diffview" },
				{ "<leader>h", group = "harpoon" },
				{ "<leader>r", group = "run" },
				{ "<leader>t", group = "test" },

				-- Suggested Spec:
			})
		end,
	},
}
