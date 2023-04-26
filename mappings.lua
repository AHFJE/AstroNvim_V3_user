-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"

    -- ["j"] = { "jzz", desc = "" },
    -- ["k"] = { "kzz", desc = "" },
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
    ["<leader>m"] = { "<C-w>c", desc = "Close Split Screen" },
    ["<C-a>"] = { "0", desc = "Go to line head" },
    ["<C-e>"] = { "$", desc = "Go to line tail" },
    ["col"] = { ":Telescope colorscheme<CR>", desc = "Change colorscheme" },
    ["<C-u>"] = { "12kzz", desc = "" },
    ["<C-d>"] = { "12jzz", desc = "" },
    ["<M-j>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    ["<Tab>"] = { "<cmd>Neotree toggle<cr>", desc = "Toggle Explorer" },
    ["<M-s>"] = { "<ESC>:w<cr>", desc = "Save File Insert" },
    ["<M-a>"] = { "gg0vG$", desc = "Select All" },
    ["<M-o>"] = {
      function() require("telescope.builtin").oldfiles() end,
      desc = "Search history",
    },
    ["<M-f>"] = {
      function()
        require("telescope.builtin").live_grep {
          ---@diagnostic disable-next-line: missing-parameter
          additional_args = function(args) return vim.list_extend(args, { "--hidden", "--no-ignore" }) end,
        }
      end,
      desc = "Search words in all files",
    },
    ["<leader>r"] = { ':lua require("undotree").toggle()<CR>', desc = "UndoTree" },
    ["<M-mm>"] = { -- ["<M-/>"]
      function() require("Comment.api").toggle.linewise.current() end,
      desc = "Comment line",
    },
  },
  i = {
    ["<M-s>"] = { "<ESC>:w<cr>", desc = "Save File Insert" },
    ["<C-a>"] = { "<ESC>I", desc = "Go to line head and Insert" },
    ["<C-e>"] = { "<ESC>A", desc = "Go to line tail and Insert" },
    ["<C-h>"] = { "<left>" },
    ["<C-j>"] = { "<down>" },
    ["<C-k>"] = { "<up>" },
    ["<C-l>"] = { "<right>" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
    ["<M-j>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
  },
  v = {
    ["("] = { "di()<ESC>hp", desc = "" },
    ["{"] = { "di{}<ESC>hp", desc = "" },
    ["["] = { "di[]<ESC>hp", desc = "" },
    ["`"] = { "di``<ESC>hp", desc = "" },
    ["'"] = { "di''<ESC>hp", desc = "" },
    ['"'] = { 'di""<ESC>hp', desc = "" },
    ["J"] = { ":move '>+1<CR>gv-gv", desc = "Move Visual Block" },
    ["K"] = { ":move '<-2<CR>gv-gv", desc = "Move Visual Block" },
    ["<C-a>"] = { "0", desc = "Go to line head" },
    ["<C-e>"] = { "$", desc = "Go to line tail" },
    ["<M-mm>"] = {
      "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
      desc = "Toggle comment line",
    },
  },
}
