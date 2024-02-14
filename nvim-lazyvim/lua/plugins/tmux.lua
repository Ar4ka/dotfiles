return {
  -- {
  --   "numToStr/Navigator.nvim",
  --   config = true,
  --   keys = {
  --     { "<C-h>", "<cmd>NavigatorLeft<cr>", desc = "Move left" },
  --     { "<C-l", "<cmd>NavigatorRight<cr>", desc = "Move right" },
  --     { "<C-j>", "<cmd>NavigatorDown<cr>", desc = "Move down" },
  --     { "<C-k>", "<cmd>NavigatorUp<cr>", desc = "Move up" },
  --   },
  -- },
  -- {
  --   "alexghergh/nvim-tmux-navigation",
  --   config = function()
  --     require("nvim-tmux-navigation").setup({
  --       disable_when_zoomed = true, -- defaults to false
  --       keybindings = {
  --         left = "<C-h>",
  --         down = "<C-j>",
  --         up = "<C-k>",
  --         right = "<C-l>",
  --         last_active = "<C-\\>",
  --         next = "<C-Space>",
  --       },
  --     })
  --   end,
  -- },
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
}
