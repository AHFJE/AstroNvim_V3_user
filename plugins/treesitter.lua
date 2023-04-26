return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = { "windwp/nvim-ts-autotag", "JoosepAlviste/nvim-ts-context-commentstring" },
  event = "User AstroFile",
  opts = {
    highlight = {
      enable = true,
    },
    incremental_selection = { enable = true },
    indent = { enable = true },
    autotag = { enable = true },
    context_commentstring = { enable = true, enable_autocmd = false },
    auto_install = true,
    ensure_installed = {
      "json",
      -- "html",
      -- "css",
      "vim",
      "lua",
      -- "javascript",
      -- "typescript",
      "python",
      "java",
    },
    sync_install = true,
  },
  config = require "plugins.configs.nvim-treesitter",
}
