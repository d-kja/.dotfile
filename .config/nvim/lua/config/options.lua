-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

-- WARN: [[ Globals ]]

local opt = vim.opt
local keymap = vim.keymap
local global = vim.g

-- INFO: [[ Options ]]

-- Configure NETRW view
global.netrw_banner = 0 -- Hide banner
-- vim.g.netrw_altv = 1 -- Open with right splitting
-- vim.g.netrw_liststyle = 3 -- Tree-style view
-- vim.g.netrw_browse_split = 4 -- Open in previous window
global.netrw_list_hide = [[node_modules,.git,.expo]] -- WARN: temporary

-- Set to true if you have a Nerd Font installed
global.have_nerd_font = true

-- Disable smooth scroll (shit sucks)
opt.smoothscroll = false

-- Enable break indent
opt.breakindent = true

-- Sets how neovim will display certain whitespace characters in the editor.
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
opt.inccommand = "split" -- preview incremental substitute

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 10

-- Set highlight on search, but clear on pressing <Esc> in normal mode
opt.hlsearch = true
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- option to avoid conflicts with Prettier.
global.lazyvim_prettier_needs_config = true

-- Copy to buffer
opt.clipboard = "unnamedplus"

-- Hot reload issue with bun
opt.backupcopy = "yes"

return {}
