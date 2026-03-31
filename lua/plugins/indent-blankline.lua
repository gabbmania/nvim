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
      vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#5a454a", bg = "#3A2A2F" })
      vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#5c5644", bg = "#3B3527" })
      vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#3b4a5a", bg = "#253342" })
      vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#5d4d42", bg = "#3C2F25" })
      vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#445547", bg = "#293A2C" })
      vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#57445c", bg = "#36273B" })
      vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#3b535b", bg = "#24373E" })
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
