vim.g.mapleader = " "
-- opens the netrw screen
vim.keymap.set("n", "<leader>e", ':NvimTreeToggle<CR>', {noremap = true})
vim.keymap.set("n", "<leader><tab>", ':bnext<CR>', {noremap = true})

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- in terminal model, Ctrl-t goes to normal mode...
vim.keymap.set('t','<C-t>',[[<C-\><C-n>]],{noremap = true})

-- panes keymaps
vim.keymap.set('n','<C-Left>','<C-w>h<CR>',{noremap = true})
vim.keymap.set('n','<C-Right>','<C-w>l<CR>',{noremap = true})
vim.keymap.set('n','<C-Up>','<C-w>k<CR>',{noremap = true})
vim.keymap.set('n','<C-Down>','<C-w>j<CR>',{noremap = true})
