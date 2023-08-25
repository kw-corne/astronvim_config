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
  {
    "navarasu/onedark.nvim",
    lazy = false,
    init = function()
      require("onedark").setup {
        style = "deep",
        highlights = {
          ["@comment"] = { fg = "$light_grey" },
        },
      }
    end,
  },
  {
    "Mofiqul/dracula.nvim",
    lazy = false,
    priority = 1000,
    init = function()
      require("dracula").setup {
        colors = {
          comment = "#a4afd3",
          nontext = "#a4afd3",
          visual = "#868a93",
          selection = "#5b5e6f",
        },
        italic_comment = true,
      }
    end,
  },
}
