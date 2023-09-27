vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        requires = {{'nvim-lua/plenary.nvim'}}
    }
    use("EdenEast/nightfox.nvim")
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')
    use('tpope/vim-fugitive')
    use('andweeb/presence.nvim')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'}, -- Required
            {'williamboman/mason.nvim'}, -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional
            -- Autocompletion
            {'hrsh7th/nvim-cmp'}, -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'hrsh7th/cmp-buffer'}, -- Optional
            {'hrsh7th/cmp-path'}, -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'}, -- Optional
            -- Snippets
            {'L3MON4D3/LuaSnip'}, -- Required
            {'rafamadriz/friendly-snippets'} -- Optional
        }
    }
    use('subnut/nvim-ghost.nvim')
    use('stephpy/vim-php-cs-fixer')
    use {
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
    }
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons' -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use {
        "themaxmarchuk/tailwindcss-colors.nvim",
        -- load only on require("tailwindcss-colors")
        module = "tailwindcss-colors",
        -- run the setup function after plugin is loaded 
        config = function()
            -- pass config options here (or nothing to use defaults)
            require("tailwindcss-colors").setup()
        end
    }
    use {
        "akinsho/toggleterm.nvim",
        tag = '*',
        config = function() require("toggleterm").setup() end
    }

    use({
        "utilyre/barbecue.nvim",
        tag = "*",
        requires = {
            "SmiteshP/nvim-navic", "nvim-tree/nvim-web-devicons" -- optional dependency
        },
        -- after = "nvim-web-devicons", -- keep this if you're using NvChad
        config = function() require("barbecue").setup() end
    })
    use 'simrat39/symbols-outline.nvim'
    -- Markdown Preview
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end
    })
    use({"windwp/nvim-ts-autotag", after = "nvim-treesitter"})
    use {
        "startup-nvim/startup.nvim",
        requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
        config = function() 

            require("startup").setup({theme = "main"})
        end
    }
    use {
        'folke/noice.nvim',
        event = "VimEnter",
        requires = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim", "rcarriga/nvim-notify", "hrsh7th/nvim-cmp"
        },
        config = function()
            require("noice").setup({
                views = {
                    cmdline_popup = {
                        border = {style = "none", padding = {2, 3}},
                        filter_options = {},
                        win_options = {
                            winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder"
                        }
                    }
                },
                routes = {
                    {
                        filter = {event = "cmdline", find = "^%s*[/?]"},
                        view = "cmdline"
                    }
                }
            })
        end
    }
end)


