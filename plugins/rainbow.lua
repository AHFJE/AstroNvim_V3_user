return {
  "HiPhish/nvim-ts-rainbow2",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  event = "User AstroFile",
  config = function()
    local rainbow = require "ts-rainbow"
    require("nvim-treesitter.configs").setup {
      rainbow = {
        enable = true,
        query = "rainbow-parens",
        strategy = rainbow.strategy.global,
        hlgroups = {
          "TSRainbowRed",
          "TSRainbowYellow",
          "TSRainbowBlue",
          "TSRainbowOrange",
          "TSRainbowGreen",
          "TSRainbowViolet",
          "TSRainbowCyan",
        },
      },
    }
  end,
}
