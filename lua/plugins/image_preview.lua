return {
  "adelarsq/image_preview.nvim",
  keys = { "<C-v>", desc = "Preview image" },
  event = "VeryLazy",
  config = function() require("image_preview").setup() end,
}
