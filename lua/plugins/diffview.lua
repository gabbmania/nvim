-- Diffview: side-by-side git diffs, merge-conflict resolution, and file history
-- Keymaps live under <leader>gv to avoid clashing with LazyVim's built-in <leader>g* maps.
return {
  "sindrets/diffview.nvim",
  cmd = {
    "DiffviewOpen",
    "DiffviewClose",
    "DiffviewToggleFiles",
    "DiffviewFocusFiles",
    "DiffviewRefresh",
    "DiffviewFileHistory",
  },
  keys = {
    { "<leader>gvo", "<cmd>DiffviewOpen<cr>", desc = "Diffview Open (working tree)" },
    { "<leader>gvc", "<cmd>DiffviewClose<cr>", desc = "Diffview Close" },
    { "<leader>gvf", "<cmd>DiffviewFileHistory %<cr>", desc = "Diffview File History (current file)" },
    { "<leader>gvh", "<cmd>DiffviewFileHistory<cr>", desc = "Diffview File History (repo)" },
    { "<leader>gvf", ":'<,'>DiffviewFileHistory<cr>", mode = "v", desc = "Diffview History (selection)" },
  },
  opts = {
    enhanced_diff_hl = true,
  },
  specs = {
    {
      "folke/which-key.nvim",
      optional = true,
      opts = { spec = { { "<leader>gv", group = "diffview" } } },
    },
  },
}
