return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = { "User AstroFile" },
    cmd = { "TodoQuickFix" },
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope" },
    },
  },
  -- {
  --   "sainnhe/gruvbox-material",
  --   init = function()
  --     vim.g.gruvbox_material_background = "hard"
  --     vim.g.gruvbox_material_foreground = "mix"
  --     vim.g.gruvbox_material_dim_inactive_windows = 0
  --   end,
  -- },
  --

  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    opts = {
      -- table: default groups
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
        "CursorLineNr",
        "CursorLine",
        "EndOfBuffer",
        "Winbar",
        "WinbarNC",
      },
      -- table: additional groups that should be cleared
      extra_groups = {
        "NormalFloat",
        "NvimTreeNormal",
        "NeoTreeNormal",
        "NeoTreeFloatBorder",
        "NeoTreeNormalNC",
        "BufferlineBackground",
        "BufferlineFill",
      },
      -- table: groups you don't want to clear
      exclude_groups = {},
    },
    keys = {
      { "<leader>u" .. "T", "<cmd>TransparentToggle<CR>", desc = "Toggle transparency" },
    },
  },

  {
    "navarasu/onedark.nvim",
    lazy = false,
    init = function()
      require("onedark").setup {
        -- style = "darker",
        highlights = {
          ["@comment"] = { fg = "$light_grey" },
        },
      }
    end,
  },
  {
    dir = "~/projects/nvim/adrenaline.nvim",
  },
}
