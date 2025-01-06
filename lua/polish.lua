-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
-- vim.filetype.add {
--   extension = {
--     foo = "fooscript",
--   },
--   filename = {
--     ["Foofile"] = "fooscript",
--   },
--   pattern = {
--     ["~/%.config/foo/.*"] = "fooscript",
--   },
-- }

-- Set key binding
-- R settings
vim.cmd "vmap <enter> <Plug>RDSendSelection"
vim.cmd "nmap <enter> <Plug>RDSendLine"
vim.cmd "let R_rconsole_width = 0"
vim.cmd "let cmdline_vsplit = 0"
vim.cmd "let cmdline_term_width = 150"
vim.cmd "let R_assign = 2"
vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})

-- vim options
-- vim.cmd "set shell=zsh"
-- vim.o.colorcolumn = "80"
-- vim.opt.spelllang = "en_GB, de_DE"
-- vim.opt.spell = true
