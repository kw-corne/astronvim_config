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
  {
    dir = "/home/c/projects/kitty-exec.nvim",
    opts = {},
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    ---@type CatppuccinOptions
    opts = {
      integrations = {
        alpha = true,
        aerial = true,
        dap = true,
        dap_ui = true,
        mason = true,
        neotree = true,
        notify = true,
        nvimtree = false,
        semantic_tokens = true,
        symbols_outline = true,
        telescope = true,
        rainbow_delimiters = true,
        which_key = true,
      },
      color_overrides = {
        frappe = {
          base = "#1e1e1e",
          mantle = "#1e1e1e",
          crust = "#1e1e1e",
        },
      },
      -- custom_highlights = function(colors) end,
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    optional = true,
    opts = {
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    },
  },
  {
    "sainnhe/gruvbox-material",
    init = function()
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_foreground = "mix"
      vim.g.gruvbox_material_dim_inactive_windows = 0
      vim.g.gruvbox_material_float_style = "dim"
    end,
  },
  --
  -- {
  --   "EdenEast/nightfox.nvim",
  --   opts = {
  --     options = {
  --       transparent = true,
  --       module_default = false,
  --       modules = {
  --         aerial = true,
  --         cmp = true,
  --         ["dap-ui"] = true,
  --         dashboard = true,
  --         diagnostic = true,
  --         gitsigns = true,
  --         native_lsp = true,
  --         neotree = true,
  --         notify = true,
  --         symbol_outline = true,
  --         telescope = true,
  --         treesitter = true,
  --         whichkey = true,
  --       },
  --     },
  --     groups = { all = { NormalFloat = { link = "Normal" } } },
  --   },
  -- },
  {
    "jghauser/kitty-runner.nvim",
    init = function()
      local opts = require("kitty-runner.config").window_config
      require("kitty-runner").setup(opts)
    end,
  },
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
  -- {
  --   "shortcuts/no-neck-pain.nvim",
  --   version = "*",
  --   init = function()
  --     require("no-neck-pain").setup {
  --       mappings = {
  --         enabled = true,
  --       },
  --       buffers = {
  --         setNames = true,
  --       },
  --     }
  --   end,
  -- },
  -- {
  --   "navarasu/onedark.nvim",
  --   lazy = false,
  --   init = function()
  --     require("onedark").setup {
  --       -- style = "darker",
  --       highlights = {
  --         ["@comment"] = { fg = "$light_grey" },
  --       },
  --     }
  --   end,
  -- },
}
