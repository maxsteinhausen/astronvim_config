return {
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "mfussenegger/nvim-dap",
      "mfussenegger/nvim-dap-python", --optional
      { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
    },
    lazy = false,
    branch = "regexp", -- This is the regexp branch, use this for the new version
    config = function()
      require("venv-selector").setup {
        name = ".venv",
        auto_refresh = true,
        dap_enabled = true,
      }
    end,
    keys = {
      { "<leader>pv", "<cmd>VenvSelect<cr>", desc = "Select virtual environment for Python" },
    },
  },
}
