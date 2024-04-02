---@type LazySpec
return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    -- customize the dashboard buttons
    opts.section.buttons.val = {
      opts.button("LDR n", "  New File  "),
      opts.button("LDR f f", "  Find File  "),
      opts.button("LDR f o", "  Recents  "),
      opts.button("LDR f w", "  Find Word  "),
      opts.button("LDR f '", "  Bookmarks  "),
      opts.button("LDR f a", "  Config files  "),
      opts.button("LDR S l", "  Last Session  "),
      opts.button("LDR p a", "  Update Plugins"),
      opts.button("LDR q", "  Quit"),
    }
  end,
}
