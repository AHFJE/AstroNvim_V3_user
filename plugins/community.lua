return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.utility.noice-nvim" },
  -- { import = "astrocommunity.code-runner.sniprun" },
  { import = "astrocommunity.bars-and-lines.bufferline-nvim" },
  -- { import = "astrocommunity.utility.neodim" },
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
        offsets = {
          {
            filetype = "neo-tree",
            text = "AHFJE",
            text_align = "center",
            separator = true,
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
    "folke/noice.nvim",
    opts = {
      lsp = {
        signature = {
          enabled = false,
        },
      },
    },
  },

  -- { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  -- {
  --   "m4xshen/smartcolumn.nvim",
  --   opts = {
  --     colorcolumn = 120,
  --     disabled_filetypes = { "help" },
  --   },
  -- },
}
