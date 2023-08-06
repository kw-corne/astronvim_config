-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
    ["<Enter>"] = { "o<ESC>", desc = "New line" },
    ["<S-Enter>"] = { "O<ESC>", desc = "New line above" },
    -- Buffer nav
    ["]b"] = false,
    ["[b"] = false,
    ["<Tab>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<S-Tab>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    -- Move current line / block with Alt-j/k ala vscode.
    -- ["<A-j>"] = "<Esc>:m .+1<CR>",
    -- Move current line / block with Alt-j/k ala vscode.
    -- ["<A-k>"] = "<Esc>:m .-2<CR>",
    -- tmux vim
    -- ["<C-h>"] = { "<cmd>TmuxNavigateLeft<CR>", desc = "window left" },
    -- ["<C-l>"] = { "<cmd>TmuxNavigateRight<CR>", desc = "window right" },
    -- ["<C-j>"] = { "<cmd>TmuxNavigateDown<CR>", desc = "window down" },
    -- ["<C-k>"] = { "<cmd>TmuxNavigateUp<CR>", desc = "window up" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {},
}
