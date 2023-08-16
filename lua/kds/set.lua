vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.hlsearch = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.notimeout = true
vim.opt.wrap = true
vim.api.nvim_set_hl(0, "ColorColumn", { ctermbg=1, bg=LightGrey })
vim.api.nvim_set_hl(0, "Normal", { ctermfg=White,  ctermbg=Black })

-- :set ColorColumn 80
vim.opt.colorcolumn = "80"

if vim.fn.has("unnamedplus") == 1 then
    vim.cmd("set clipboard=unnamedplus")
else
    vim.cmd("set clipboard=unnamed")
end

