-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "r",
      "python",
      "markdown",
      "rnoweb",
      "latex",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
