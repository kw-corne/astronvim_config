return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function() require("lsp_signature").setup() end,
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
  -- {
  --   "sainnhe/sonokai",
  --   init = function()
  --     -- vim.g.sonokai_dim_inactive_windows = 1
  --     -- vim.g.sonokai_style = "andromeda"
  --   end,
  -- },
  -- {
  --   "sainnhe/edge",
  --   init = function()
  --     -- vim.g.edge_dim_inactive_windows = 1
  --     vim.g.edge_style = "aura"
  --   end,
  -- },
  -- {
  --   "sainnhe/gruvbox-material",
  --   init = function()
  --     vim.g.gruvbox_material_background = "medium"
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
    "Mofiqul/dracula.nvim",
    lazy = false,
    priority = 1000,
    init = function()
      require("dracula").setup {
        colors = {
          comment = "#a4afd3",
          visual = "#868a93",
          selection = "#5b5e6f",
        },
        italic_comment = true,
      }
      -- colors = {
      --   comment = "#a4afd3",
      -- }
    end,
  },
  -- {
  --   "projekt0n/github-nvim-theme",
  --   lazy = false, -- make sure we load this during startup if it is your main colorscheme
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   config = function()
  --     require("github-theme").setup {
  --       lazy = false,
  --       darken = { -- Darken floating windows and sidebar-like windows
  --         floats = false,
  --         sidebars = {
  --           enable = false,
  --           list = {}, -- Apply dark background to specific windows
  --         },
  --       },
  --     }
  --   end,
  -- },
  -- {
  --   "nvim-neorg/neorg",
  --   build = ":Neorg sync-parsers",
  --   dependencies = { "nvim-lua/plenary.nvim" },
  --   event = "VeryLazy",
  --   opts = {
  --     load = {
  --       ["core.defaults"] = {}, -- Loads default behaviour
  --       ["core.concealer"] = {}, -- Adds pretty icons to your documents
  --       ["core.keybinds"] = {}, -- Adds default keybindings
  --       ["core.completion"] = {
  --         config = {
  --           engine = "nvim-cmp",
  --         },
  --       }, -- Enables support for completion plugins
  --       ["core.journal"] = {}, -- Enables support for the journal module
  --       ["core.dirman"] = { -- Manages Neorg workspaces
  --         config = {
  --           workspaces = {
  --             notes = "~/projects/notes",
  --           },
  --         },
  --       },
  --     },
  --   },
  -- },
}
