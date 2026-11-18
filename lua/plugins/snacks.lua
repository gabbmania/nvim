-- Always show hidden (dotfiles) and gitignored files in the Snacks explorer and file picker
return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = { hidden = true, ignored = true },
        files = { hidden = true, ignored = true },
      },
    },
  },
}
