return {
  {
    "OXY2DEV/markview.nvim",
    -- lazy = false, -- Recommended
    -- ft = "markdown" -- If you decide to lazy-load anyway

    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    keys = {
      { "<leader>m", "<cmd>Markview splitToggle<cr>", desc = "Toggle markview split" },
    },
  },
}
