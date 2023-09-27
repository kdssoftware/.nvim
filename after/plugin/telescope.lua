local builtin = require('telescope.builtin')
local telescope = require('telescope')

vim.g.theme_switcher_loaded = true

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pg', builtin.live_grep,{})
vim.keymap.set('n', '<leader>pa', builtin.git_files, {})
telescope.setup({
  defaults = {
    layout_config = {
      vertical = { width = 0.5 }
    },
    color_devicons = true,
    set_env = { ["COLORTERM"] = "truecolor" }
  },
  pickers = {
	  find_files = {
      theme = "dropdown",
    }
  },
  extensions_list = { "themes", "terms" },
})

