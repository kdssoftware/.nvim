vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
-- vim.opt.termguicolors = true
vim.g.theme_switcher_loaded = true

require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {width = 30, mappings = {list = {{key = "u", action = "dir_up"}}}},
    renderer = {group_empty = true},
    filters = {dotfiles = false}
})

local function open_nvim_tree(data)

    local directory = vim.fn.isdirectory(data.file) == 1

    if not directory then return end

    vim.cmd.cd(data.file)

    require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({"VimEnter"}, {callback = open_nvim_tree})
