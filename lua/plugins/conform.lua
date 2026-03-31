return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      htmldjango = { "djlint" },
    },
    formatters = {
      djlint = {
        args = { "--reformat", "--indent", "2", "-" },
      },
    },
  },
}
