-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 500, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics_mode = 3, -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = true, -- sets vim.opt.spell
        spelllang = { "en", "de" },
        signcolumn = "auto", -- sets vim.opt.signcolumn to auto
        wrap = false, -- sets vim.opt.wrap
        textwidth = 80,
        colorcolumn = "80",
        scrolloff = 3,
        shell = "zsh",
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- mapleader = " ", -- sets vim.g.mapleader
        -- maplocalleader = ",", -- set , as local leader in e.g. R and python
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
        virtcolumn_char = "▕", -- char to display the line
        virtcolumn_priority = 10, -- priority of extmark
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map

        -- navigate buffer tabs with `H` and `L`
        -- L = {
        --   function() require("astrocore.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
        --   desc = "Next buffer",
        -- },
        -- H = {
        --   function() require("astrocore.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
        --   desc = "Previous buffer",
        -- },

        -- mappings seen under group name "Buffer"
        ["<Leader>bD"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Pick to close",
        },
        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        ["<Leader>b"] = { desc = "Buffers" },
        -- quick save
        -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
        -- second key is the lefthand side of the map
        ["<C-s>"] = { ":w!<cr>", desc = "save File" },
        ["<C-d>"] = { ":wq<cr>", desc = "control+d for save and close" },
        ["<F5>"] = { ":setlocal spell!<cr>", desc = "toggle spellcheck" },
        ["<Leader>m"] = { ":Glow<cr>", desc = "markdown preview buffer" },
        ["<Leader>v"] = { ":Vista<cr>", desc = "python tags" },
        ["<Leader>x"] = { ":JupyterExecute<cr>", desc = "Execute the current line Jupyter" },
        ["<Leader>X"] = { ":JupyterExecuteAll<cr>", desc = "Execute all Jupyter" },
        -- mappings seen under group name "Buffer"
        ["<Leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
        ["<Leader><cr>"] = { "<cmd>ToggleTermSendCurrentLine<cr> j", desc = "Send current line to terminal" },
      },
      -- v for visual mode
      v = {
        ["<Leader><cr>"] = { "<cmd>ToggleTermSendVisualSelection<cr>", desc = "Send selected lines to terminal" },
      },
      t = {
        -- setting a mapping to false will disable it
        -- ["<esc>"] = false,
      },
    },
  },
}
