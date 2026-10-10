-- Neovim automatically adds the ~/.config/nvim/lua/ folder as the root directory for all require()
require("options")
require("lazy_init")

-- Create an autocommand group for spell checking
local spell_group = vim.api.nvim_create_augroup("FileTypeSpell", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  group = spell_group,
  pattern = { "markdown", "tex", "gitcommit", "plaintext" },
  callback = function()
    vim.opt_local.spell = true
    vim.opt_local.spelllang = "en_nz"
  end,
})

