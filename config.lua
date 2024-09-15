-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-Kv3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
-- vim.cmd('source ~/.vimrc')
--
-- -- Imposta il numero di righe e colonne relative
vim.wo.relativenumber = true
vim.wo.number = true

-- Mappature di tasti
-- nnoremap \ 0
vim.api.nvim_set_keymap('n', '\\', '0', { noremap = true, silent = true })

-- vmap \ 0
vim.api.nvim_set_keymap('v', '\\', '0', { noremap = true, silent = true })

-- nnoremap 0 $
vim.api.nvim_set_keymap('n', '0', '$', { noremap = true, silent = true })

-- vmap 0 $
vim.api.nvim_set_keymap('v', '0', '$', { noremap = true, silent = true })

-- nnoremap + {
vim.api.nvim_set_keymap('n', '+', '{', { noremap = true, silent = true })

-- nnoremap - }
vim.api.nvim_set_keymap('n', '-', '}', { noremap = true, silent = true })

-- vnoremap + {
vim.api.nvim_set_keymap('v', '+', '{', { noremap = true, silent = true })

-- vnoremap - }
vim.api.nvim_set_keymap('v', '-', '}', { noremap = true, silent = true })

-- vim.keymap.set("n", "< >", ":wqa<CR>")

-- Define mappings
vim.keymap.set("n", "gc", ":%s")
vim.keymap.set("n", "g0", "gg=GGG")
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("n", "gp", "`[v`]")
-- Define mappings
-- vim.keymap.set("n", "<leader>3", ":vsp<CR>")
-- vim.keymap.set("n", "<leader>i", ":split<CR>")
-- Define mappings
-- vim.keymap.set("n", "<Tab>", "gt")
-- vim.keymap.set("n", "<S-Tab>", "gT")
-- vim.keymap.set("n", "<leader>v", ":bn<CR>")
-- vim.keymap.set("n", "<leader>b", ":tabe<CR>")
-- vim.keymap.set("n", "<leader>n", "G=ggg;")

vim.keymap.set("n", "yu", "y$")
vim.keymap.set("n", "Y", "y$")
vim.keymap.set("n", "yt", "0y$")

