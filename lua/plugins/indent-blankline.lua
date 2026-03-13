return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  config = function()
    local highlight = {
      "RainbowRed",
      "RainbowYellow",
      "RainbowBlue",
      "RainbowOrange",
      "RainbowGreen",
      "RainbowViolet",
      "RainbowCyan",
    }

    local hooks = require("ibl.hooks")
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75", bg = "#3A2A2F" })
      vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B", bg = "#3B3527" })
      vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF", bg = "#253342" })
      vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66", bg = "#3C2F25" })
      vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379", bg = "#293A2C" })
      vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD", bg = "#36273B" })
      vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2", bg = "#24373E" })
    end)

    require("ibl").setup({
      indent = {
        highlight = highlight,
        char = "▏",
      },
      whitespace = {
        highlight = highlight,
        remove_blankline_trail = false,
      },
      scope = { enabled = false },
    })
  end,
}
