-- set up
require('basics.options')
require('basics.keymaps')

-- lsp

vim.lsp.enable('rust_analyzer')
vim.lsp.enable('pyright')

-- Enable the new 0.12 completion features
vim.opt.completeopt = { "menu", "menuone", "noselect" }

-- Trigger completion automatically as you type (Native hack)
vim.api.nvim_create_autocmd("InsertCharPre", {
  callback = function()
    if vim.fn.pumvisible() == 0 then
      local char = vim.v.char
      -- Only trigger if the character is a letter or a trigger (like . or :)
      if char:match("[%w%.%:]") then
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-x><C-o>", true, false, true), "n", true)
      end
    end
  end,
})


-- add the messages for E and W
vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, { focusable = false })
  end,
})

vim.opt.updatetime = 300
