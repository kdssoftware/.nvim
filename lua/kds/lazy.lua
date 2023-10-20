local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'},
    {'nvim-telescope/telescope.nvim', tag = '0.1.1'}, "EdenEast/nightfox.nvim",
    {
        'mrcjkb/haskell-tools.nvim',
        dependencies = {'nvim-lua/plenary.nvim'},
        version = '^2', -- Recommended
        ft = {'haskell', 'lhaskell', 'cabal', 'cabalproject'}
    }, 'nvim-lua/plenary.nvim', 'tpope/vim-fugitive', {
        'folke/neodev.nvim',
        config = function() require("neodev").setup({}) end,
        requires = 'neovim/nvim-lspconfig'
    }, 'neovim/nvim-lspconfig', 'andweeb/presence.nvim', 'ray-x/go.nvim',
    'ray-x/guihua.lua', 'neovim/nvim-lspconfig', 'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim', 'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path',
    'saadparwaiz1/cmp_luasnip', 'hrsh7th/cmp-nvim-lua', 'L3MON4D3/LuaSnip',
    'rafamadriz/friendly-snippets', "nvim-tree/nvim-web-devicons",
    'subnut/nvim-ghost.nvim', 'stephpy/vim-php-cs-fixer',
    'nvim-tree/nvim-web-devicons', "SmiteshP/nvim-navic",
    'simrat39/symbols-outline.nvim', 'Bekaboo/deadcolumn.nvim', {
        'kdssoftware/lua-obfuscator.nvim',
        config = function() require("lua-obfuscator").setup() end
    }, {'VonHeikemen/lsp-zero.nvim', branch = 'v1.x'}, {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup {
                signs = {
                    add = {text = '+'},
                    change = {text = '~'},
                    delete = {text = '-'},
                    topdelete = {text = '‾'},
                    changedelete = {text = '±'},
                    untracked = {text = ''}
                },
                current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
                current_line_blame_opts = {
                    virt_text = true,
                    virt_text_pos = 'right_align', -- 'eol' | 'overlay' | 'right_align'
                    delay = 1500,
                    ignore_whitespace = false
                }
            }
        end
    }, 'nvim-tree/nvim-tree.lua', {
        "themaxmarchuk/tailwindcss-colors.nvim",
        module = "tailwindcss-colors",
        -- run the setup function after plugin is loaded 
        config = function() require("tailwindcss-colors") end
    }, {
        "akinsho/toggleterm.nvim",
        tag = '*',
        config = function() require("toggleterm").setup() end
    }, {
        "utilyre/barbecue.nvim",
        tag = "*",
        config = function() require("barbecue").setup() end
    }, {
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end
    }, {
        "startup-nvim/startup.nvim",
        requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
        config = function() require("startup").setup({theme = "main"}) end
    }

}

require("lazy").setup(plugins)
