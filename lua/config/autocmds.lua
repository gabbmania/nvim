-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("TermOpen", {
  desc = "Auto-activate virtualenv in terminal",
  pattern = "*",
  callback = function()
    local venv_names = { ".venv", "venv", "env", ".env" }
    local venv_name = nil

    for _, name in ipairs(venv_names) do
      if vim.fn.isdirectory(name) == 1 then
        venv_name = name
        break
      end
    end

    if not venv_name then
      return
    end

    local cmd = ""
    if vim.fn.has("win32") == 1 then
      cmd = ".\\" .. venv_name .. "\\Scripts\\Activate.ps1"
    else
      cmd = "source " .. venv_name .. "/bin/activate"
    end

    vim.defer_fn(function()
      vim.api.nvim_chan_send(vim.b.terminal_job_id, cmd .. "\n")
    end, 100)
  end,
})
