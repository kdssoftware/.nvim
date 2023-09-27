local isTransp = false

function Coloring(color)
 color = color or 'nightfox'
 if isTransp then
    vim.api.nvim_set_hl(0,"Normal", {bg = "none", ctermbg="none"})
 else
    vim.api.nvim_set_hl(0,"Normal", {bg = "none"})
 end
 vim.api.nvim_set_hl(0, 'WinSeparator', { fg = '#4e75aa', bold = true })

 vim.api.nvim_set_hl(0, 'TelescopeNormal', { bg = '#10161E'})
 vim.api.nvim_set_hl(0, 'TelescopeBorder', { bg = '#10161E'})

 vim.api.nvim_set_hl(0, 'NvimTreeNormal', { bg = '#1F2B3B'})
 vim.api.nvim_set_hl(0, 'NvimTreeBorder', { bg = '#1F2B3B'})

 vim.api.nvim_set_hl(0, 'SymbolOutlineConnector', { bg = '#25314A'})
 vim.api.nvim_set_hl(0, 'NeoTreeBorder', { bg = '#2E3440'})
end

-- Default options
require('nightfox').setup({
    options = {
    compile_path = vim.fn.stdpath("cache") .. "/nightfox",
    compile_file_suffix = "_compiled", -- Compiled file suffix
    transparent = isTransp,     -- Disable setting background
    terminal_colors = true,  -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    dim_inactive = false,    -- Non focused panes set to alternative background
    module_default = true,   -- Default enable value for modules
    colorblind = {
      enable = true,        -- Enable colorblind support
      simulate_only = false, -- Only show simulated colorblind colors and not diff shifted
      severity = {
        protan = 0,          -- Severity [0,1] for protan (red)
        deutan = 0,          -- Severity [0,1] for deutan (green)
        tritan = 1,          -- Severity [0,1] for tritan (blue)
      },
    },
    styles = {               -- Style to be applied to different syntax groups
      comments = "NONE",     -- Value is any valid attr-list value `:help attr-list`
      conditionals = "NONE",
      constants = "NONE",
      functions = "NONE",
      keywords = "NONE",
      numbers = "NONE",
      operators = "NONE",
      strings = "NONE",
      types = "NONE",
      variables = "NONE",
    },
    inverse = {             -- Inverse highlight for different types
      match_paren = true,
      visual = true,
      search = false,
    },
    modules = {             -- List of various plugins and additional options
      -- ...
    },
  },
  palettes = {},
  specs = {},
  groups = {}
  }
)

-- setup must be called before loading
vim.cmd("colorscheme nightfox")

Coloring()
