return {
  {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
    -- use nvim . in the terminal to open the current directory in Oil
    -- use enter to go into folders and - to go back
    keys = {
      { "<leader>i", "<cmd>Oil --float<cr>", desc = "Open current directory in Oil" },
    },
  },
}
