return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    -- config = function() require("todo-comments").setup {} end,
    opts = {},
    event = { "User AstroFile" },
    cmd = { "TodoQuickFix" },
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope" },
    },
  },
  { "xiyaowong/transparent.nvim", lazy = false },
  {
    "sainnhe/sonokai",
    init = function()
      -- vim.g.sonokai_dim_inactive_windows = 1
      vim.g.sonokai_style = "atlantis"
    end,
  },
  -- {
  --   "sainnhe/edge",
  --   init = function()
  --     vim.g.edge_dim_inactive_windows = 1
  --     vim.g.edge_style = "aura"
  --   end,
  -- },
  -- {
  --   "sainnhe/gruvbox-material",
  --   init = function()
  --     vim.g.gruvbox_material_background = "hard"
  --     -- vim.g.gruvbox_material_dim_inactive_windows = 1
  --   end,
  -- },
  -- {
  --   "sainnhe/everforest",
  --   init = function()
  --     vim.g.everforest_background = "hard"
  --     vim.g.everforest_dim_inactive_windows = 1
  --   end,
  -- },
  {
    "kw-corne/doom-one.nvim",
    init = function()
      -- Add color to cursor
      vim.g.doom_one_cursor_coloring = true
      -- Set :terminal colors
      vim.g.doom_one_terminal_colors = true
      -- Enable italic comments
      vim.g.doom_one_italic_comments = false
      -- Enable TS support
      vim.g.doom_one_enable_treesitter = true
      -- Color whole diagnostic text or only underline
      vim.g.doom_one_diagnostics_text_color = false
      -- Enable transparent background
      vim.g.doom_one_transparent_background = false

      -- Pumblend transparency
      vim.g.doom_one_pumblend_enable = false
      vim.g.doom_one_pumblend_transparency = 20

      -- Plugins integration
      vim.g.doom_one_plugin_neorg = true
      vim.g.doom_one_plugin_barbar = false
      vim.g.doom_one_plugin_telescope = true
      vim.g.doom_one_plugin_neogit = true
      vim.g.doom_one_plugin_nvim_tree = true
      vim.g.doom_one_plugin_dashboard = true
      vim.g.doom_one_plugin_startify = true
      vim.g.doom_one_plugin_whichkey = true
      vim.g.doom_one_plugin_indent_blankline = true
      vim.g.doom_one_plugin_vim_illuminate = true
      vim.g.doom_one_plugin_lspsaga = false
    end,
    config = function() vim.cmd "colorscheme doom-one" end,
  },
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "VeryLazy",
    opts = {
      load = {
        ["core.defaults"] = {},  -- Loads default behaviour
        ["core.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.keybinds"] = {},  -- Adds default keybindings
        ["core.completion"] = {
          config = {
            engine = "nvim-cmp",
          },
        },                     -- Enables support for completion plugins
        ["core.journal"] = {}, -- Enables support for the journal module
        ["core.dirman"] = {    -- Manages Neorg workspaces
          config = {
            workspaces = {
              notes = "~/projects/notes",
            },
          },
        },
      },
    },
  },
}
