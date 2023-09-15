local close_func = function(bufnum)
  local bufdelete_avail, bufdelete = pcall(require, "bufdelete")
  if bufdelete_avail then
    bufdelete.bufdelete(bufnum, true)
  else
    vim.cmd.bdelete { args = { bufnum }, bang = true }
  end
end

return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  -- { import = "astrocommunity.utility.noice-nvim" },
  -- { import = "astrocommunity.code-runner.sniprun" },
  -- { import = "astrocommunity.utility.neodim" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.bars-and-lines.bufferline-nvim" },
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        mode = "buffers",
        numbers = "none",
        diagnostics = "nvim_lsp",
        diagnostics_update_in_insert = false,
        -- indicator = {
        --   style = "underline",
        -- },
        close_command = close_func,
        right_mouse_command = close_func,
        offsets = {
          {
            filetype = "neo-tree",
            text = "󰫮 󰫵 󰫳 󰫷 󰫲",
            text_align = "center",
            -- separator = true,
          },
        },
        separator_style = "slant",
        color_icons = true,
        hover = {
          enabled = true,
          delay = 200,
          reveal = { "close" },
        },
      },
    },
  },
  {
    "HiPhish/rainbow-delimiters.nvim",
    opts = {
      highlight = {
        "RainbowDelimiterYellow",
        "RainbowDelimiterBlue",
        "RainbowDelimiterOrange",
        "RainbowDelimiterGreen",
        "RainbowDelimiterViolet",
        "RainbowDelimiterCyan",
      },
    },
  },
  -- {
  --   "folke/noice.nvim",
  --   opts = {
  --     lsp = {
  --       signature = {
  --         enabled = false,
  --       },
  --     },
  --   },
  -- },

  -- { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  -- {
  --   "m4xshen/smartcolumn.nvim",
  --   opts = {
  --     colorcolumn = 120,
  --     disabled_filetypes = { "help" },
  --   },
  -- },
}
