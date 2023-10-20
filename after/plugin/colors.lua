local isTransp = false

function Coloring(color)
    color = color or 'nightfox'
    if isTransp then
        vim.api.nvim_set_hl(0, "Normal", {bg = "none", ctermbg = "none"})
    else
        vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
    end
    vim.api.nvim_set_hl(0, 'WinSeparator', {fg = '#4e75aa', bold = true})

    vim.api.nvim_set_hl(0, 'TelescopeNormal', {bg = '#10161E'})
    vim.api.nvim_set_hl(0, 'TelescopeBorder', {bg = '#10161E'})

    vim.api.nvim_set_hl(0, 'NvimTreeNormal', {bg = '#1F2B3B'})
    vim.api.nvim_set_hl(0, 'NvimTreeBorder', {bg = '#1F2B3B'})

    vim.api.nvim_set_hl(0, 'SymbolOutlineConnector', {bg = '#25314A'})
    vim.api.nvim_set_hl(0, 'NeoTreeBorder', {bg = '#2E3440'})
end

-- Default options
require('nightfox').setup({
    options = {
        compile_path = vim.fn.stdpath("cache") .. "/nightfox",
        compile_file_suffix = "_compiled", -- Compiled file suffix
        transparent = isTransp, -- Disable setting background
        terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
        dim_inactive = false, -- Non focused panes set to alternative background
        module_default = true, -- Default enable value for modules

        colorblind = {
            enable = true, -- Enable colorblind support
            simulate_only = false, -- Only show simulated colorblind colors and not diff shifted
            severity = {
                protan = 0, -- Severity [0,1] for protan (red)
                deutan = 0, -- Severity [0,1] for deutan (green)
                tritan = 1 -- Severity [0,1] for tritan (blue)
            }
        },
        styles = { -- Style to be applied to different syntax groups
            comments = "NONE", -- Value is any valid attr-list value `:help attr-list`
            conditionals = "NONE",
            constants = "NONE",
            functions = "NONE",
            keywords = "NONE",
            numbers = "NONE",
            operators = "NONE",
            strings = "NONE",
            types = "NONE",
            variables = "NONE"
        },
        inverse = { -- Inverse highlight for different types
            match_paren = true,
            visual = true,
            search = false
        },
        modules = { -- List of various plugins and additional options
            -- ...
        }
    },
    palettes = {},
    specs = {},
    groups = {}
})

-- setup must be called before loading
vim.cmd("colorscheme nightfox")

Coloring()

-- Function to set colorscheme based on majority file extensions
function SetColorschemeBasedOnFiles()
    -- List of supported file extensions and corresponding colorschemes
    local colorschemes = {
        ['.go'] = 'duskfox',
        ['.tsx'] = 'carboxfox',
        ['.hs'] = 'terafox',
        ['.rs'] = 'terafox',
        ['.lua'] = 'nordfox',
        ['.vim'] = 'nordfox'
    }

    -- Table to store file extension counts
    local extensionCount = {}

    -- Get the current working directory
    local currentDirectory = vim.fn.getcwd()

    -- Iterate through files in the current directory
    for _, file in ipairs(vim.fn.readdir(currentDirectory)) do
        local extension = file:match("^.+(%..+)$")
        if extension then
            extension = extension:lower() -- Convert to lowercase for case-insensitivity
            extensionCount[extension] = (extensionCount[extension] or 0) + 1
        end
    end

    -- Find the most common file extension
    local mostCommonExtension, maxCount = nil, 0
    for extension, count in pairs(extensionCount) do
        if count > maxCount then
            mostCommonExtension, maxCount = extension, count
        end
    end

    -- Set colorscheme based on the most common file extension
    local defaultColorscheme = 'nightfox'
    local selectedColorscheme = colorschemes[mostCommonExtension] or
                                    defaultColorscheme

    -- Set the colorscheme using the selectedColorscheme variable
    vim.cmd(':colorscheme ' .. selectedColorscheme)
end

-- Call the function to set colorscheme based on the files in the current directory
SetColorschemeBasedOnFiles()
