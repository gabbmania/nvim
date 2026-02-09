return {
  {
    "stevearc/conform.nvim",
    opts = {
      default_format_opts = {
        timeout_ms = 10000,
        async = false,
        lsp_format = "fallback",
      },
      formatters = {
        black = {
          timeout_ms = 10000,
        },
      },
    },
  },
}
