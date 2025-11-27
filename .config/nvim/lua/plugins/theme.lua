return {
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
    init = function()
      vim.cmd.colorscheme("tokyonight-storm")
    end,
  },
  {
    "xiyaowong/transparent.nvim",
    config = function()
      local transparent = require("transparent")

      transparent.setup({
        groups = {
          "Normal",
          "NormalNC",
          "Comment",
          "Constant",
          "Special",
          "Identifier",
          "Statement",
          "PreProc",
          "Type",
          "Underlined",
          "Todo",
          "String",
          "Function",
          "Conditional",
          "Repeat",
          "Operator",
          "Structure",
          "LineNr",
          "NonText",
          "SignColumn",
          "CursorLine",
          "CursorLineNr",
          "StatusLine",
          "StatusLineNC",
          "EndOfBuffer",
        },
        extra_groups = {
          "NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
          "NvimTreeNormal", -- NvimTree
        },
        exclude_groups = {},
      })

      transparent.clear_prefix("NeoTree")
    end,
  },

  -- NOTE: [[ Override lazyvim config ]]
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyostorm-storm",
    },
    config = function()
      vim.cmd.hi("Comment gui=NONE")
      vim.cmd.hi("Normal guibg=NONE")
      vim.cmd.hi("Normal ctermbg=NONE")
      vim.cmd.hi("NonText guibg=NONE")
      vim.cmd.hi("NonText guibg=NONE")
      vim.cmd.hi("netrwPlain guibg=NONE")
      vim.cmd.hi("netrwDir guibg=NONE")
      vim.cmd.hi("@tag guibg=NONE")
    end,
  },
}
