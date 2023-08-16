vim.g.mapleader = " " 
vim.keymap.set("n", "<leader>pv", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>pt", ":NvimTreeFindFile<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>pe", ":SymbolsOutline<CR>")

-- views, always use C-a => same as tmux config
vim.keymap.set("n","<C-h>","<C-W>h")
vim.keymap.set("n","<C-j>","<C-W>j")
vim.keymap.set("n","<C-k>","<C-W>k")
vim.keymap.set("n","<C-l>","<C-W>l")

vim.keymap.set("n","<C-b>","<C-^>")

-- other
vim.keymap.set("n","<C-z>","u")
vim.keymap.set("v","<C-z>","u")
vim.keymap.set("n","<C-y>","<C-R>")
vim.keymap.set("i","<C-z>","<C-O>u")
vim.keymap.set("i","<C-y>","<C-O><C-R>")

-- text movingvim
vim.keymap.set("n","0","^")
vim.keymap.set("n","$","g_")
vim.keymap.set("n","0","^")

vim.keymap.set("x","<Leader>p","\"_dP")
