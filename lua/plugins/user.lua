return {
  {
    "jalvesaq/nvim-r",
    event = "VeryLazy",
    keys = { "<localleader>rf", desc = "Start R" },
  }, -- local leader+r+t to start
  -- { "jalvesaq/vimcmdline", config = true, cmd = "Cmd" }, -- local leader + s
  { "hkupty/iron.nvim", event = "VeryLazy" },
  { "geg2102/nvim-python-repl" },
  { "chrisbra/csv.vim" },
  { "liuchengxu/vista.vim", cmd = "Vista" }, -- leader + v
  { "toppair/peek.nvim", config = true, cmd = "Peek", build = "deno task --quiet build:fast" },
  {
    "simrat39/symbols-outline.nvim",
    event = "VeryLazy",
  },
  { "AstroNvim/astrotheme" },
  { "mhartington/oceanic-next" },
  { "folke/tokyonight.nvim", opts = { style = "night" } },
  {
    "lervag/vimtex",
    init = function() vim.g.vimtex_view_method = "zathura" end,
    event = "BufRead",
  },
  { "windwp/nvim-autopairs" },
  { "lewis6991/spellsitter.nvim", event = "VeryLazy" },
  { "Decodetalkers/csv-tools.lua", event = "VeryLazy" }, -- leader+tf
  {
    "cameron-wags/rainbow_csv.nvim",
    config = true,
    ft = {
      "csv",
      "tsv",
      "csv_semicolon",
      "csv_whitespace",
      "csv_pipe",
      "rfc_csv",
      "rfc_semicolon",
    },
    cmd = {
      "RainbowDelim",
      "RainbowDelimSimple",
      "RainbowDelimQuoted",
      "RainbowMultiDelim",
    },
  },
  {
    "Exafunction/codeium.vim",
    event = "VeryLazy",
    config = function()
      -- Change '<C-g>' here to any keycode you like.
      vim.keymap.set("i", "<C-g>", function() return vim.fn["codeium#Accept"]() end, { expr = true })
      vim.keymap.set("i", "<c-;>", function() return vim.fn["codeium#CycleCompletions"](1) end, { expr = true })
      vim.keymap.set("i", "<c-,>", function() return vim.fn["codeium#CycleCompletions"](-1) end, { expr = true })
      vim.keymap.set("i", "<c-x>", function() return vim.fn["codeium#Clear"]() end, { expr = true })
    end,
  },
  {
    "ellisonleao/glow.nvim",
    keys = { "<leader>m", desc = "Markdown preview in glow" },
    config = true,
    cmd = "Glow",
  }, -- local.leader + m
  -- { "github/copilot.vim" },                                      -- needs a licence is not open source
  { "edluffy/hologram.nvim", event = "VeryLazy", cmd = "Holo" }, -- could not get it to work
  { "aca/marp.nvim", event = "VeryLazy", cmd = "Marp" }, -- Marp for markdown slides
}
