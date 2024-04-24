---@type LazySpec
return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    -- customize the dashboard header
    -- local logo = {
    --   " █████  ███████ ████████ ██████   ██████",
    --   "██   ██ ██         ██    ██   ██ ██    ██",
    --   "███████ ███████    ██    ██████  ██    ██",
    --   "██   ██      ██    ██    ██   ██ ██    ██",
    --   "██   ██ ███████    ██    ██   ██  ██████",
    --   " ",
    --   "    ███    ██ ██    ██ ██ ███    ███",
    --   "    ████   ██ ██    ██ ██ ████  ████",
    --   "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
    --   "    ██  ██ ██  ██  ██  ██ ██  ██  ██",
    --   "    ██   ████   ████   ██ ██      ██",
    -- }
    local logo = {
      [[ ███       ███ ]],
      [[█████      ████]],
      [[██████     █████]],
      [[███████    █████]],
      [[████████   █████]],
      [[█████████  █████]],
      [[█████ ████ █████]],
      [[█████  █████████]],
      [[█████   ████████]],
      [[█████    ███████]],
      [[█████     ██████]],
      [[████      █████]],
      [[ ███       ███ ]],
      [[                  ]],
      [[ N  E  O  V  I  M ]],
    }
    opts.section.header.val = logo
    -- no Idea how it works exaclty, try n error with distinguishable colors lol
    -- opts.section.header.opts.hl = {
    --   {
    --     { "AlphaNeovimLogoBlue", 0, 0 },
    --     { "AlphaNeovimLogoGreen", 1, 14 },
    --     { "AlphaNeovimLogoBlue", 23, 34 },
    --   },
    --   {
    --     { "AlphaNeovimLogoBlue", 0, 2 },
    --     { "AlphaNeovimLogoGreenFBlueB", 2, 4 },
    --     { "AlphaNeovimLogoGreen", 4, 19 },
    --     { "AlphaNeovimLogoBlue", 27, 40 },
    --   },
    --   {
    --     { "AlphaNeovimLogoBlue", 0, 4 },
    --     { "AlphaNeovimLogoGreenFBlueB", 4, 7 },
    --     { "AlphaNeovimLogoGreen", 7, 22 },
    --     { "AlphaNeovimLogoBlue", 29, 42 },
    --   },
    --   {
    --     { "AlphaNeovimLogoBlue", 0, 8 },
    --     { "AlphaNeovimLogoGreenFBlueB", 8, 10 },
    --     { "AlphaNeovimLogoGreen", 10, 25 },
    --     { "AlphaNeovimLogoBlue", 31, 44 },
    --   },
    --   {
    --     { "AlphaNeovimLogoBlue", 0, 10 },
    --     { "AlphaNeovimLogoGreenFBlueB", 10, 13 },
    --     { "AlphaNeovimLogoGreen", 13, 28 },
    --     { "AlphaNeovimLogoBlue", 33, 46 },
    --   },
    --   {
    --     { "AlphaNeovimLogoBlue", 0, 13 },
    --     { "AlphaNeovimLogoGreen", 14, 31 },
    --     { "AlphaNeovimLogoBlue", 35, 49 },
    --   },
    --   {
    --     { "AlphaNeovimLogoBlue", 0, 13 },
    --     { "AlphaNeovimLogoGreen", 16, 32 },
    --     { "AlphaNeovimLogoBlue", 35, 49 },
    --   },
    --   {
    --     { "AlphaNeovimLogoBlue", 0, 13 },
    --     { "AlphaNeovimLogoGreen", 17, 33 },
    --     { "AlphaNeovimLogoBlue", 35, 49 },
    --   },
    --   {
    --     { "AlphaNeovimLogoBlue", 0, 13 },
    --     { "AlphaNeovimLogoGreen", 18, 34 },
    --     { "AlphaNeovimLogoGreenFBlueB", 33, 35 },
    --     { "AlphaNeovimLogoBlue", 35, 49 },
    --   },
    --   {
    --     { "AlphaNeovimLogoBlue", 0, 13 },
    --     { "AlphaNeovimLogoGreen", 19, 35 },
    --     { "AlphaNeovimLogoGreenFBlueB", 34, 35 },
    --     { "AlphaNeovimLogoBlue", 35, 49 },
    --   },
    --   {
    --     { "AlphaNeovimLogoBlue", 0, 13 },
    --     { "AlphaNeovimLogoGreen", 20, 36 },
    --     { "AlphaNeovimLogoGreenFBlueB", 35, 37 },
    --     { "AlphaNeovimLogoBlue", 37, 49 },
    --   },
    --   {
    --     { "AlphaNeovimLogoBlue", 0, 13 },
    --     { "AlphaNeovimLogoGreen", 21, 37 },
    --     { "AlphaNeovimLogoGreenFBlueB", 36, 37 },
    --     { "AlphaNeovimLogoBlue", 37, 49 },
    --   },
    --   {
    --     { "AlphaNeovimLogoBlue", 1, 13 },
    --     { "AlphaNeovimLogoGreen", 20, 35 },
    --     { "AlphaNeovimLogoBlue", 37, 48 },
    --   },
    --   {},
    --   { { "AlphaNeovimLogoGreen", 0, 9 }, { "AlphaNeovimLogoBlue", 9, 18 } },
    -- }
  end,
}
