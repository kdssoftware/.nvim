local opts = {
  highlight_hovered_item = true,
  show_guides = true,
  auto_preview = false,
  position = 'right',
  relative_width = true,
  width = 18,
  auto_close = false,
  show_numbers = false,
  show_relative_numbers = true,
  show_symbol_details = true,
  preview_bg_highlight = 'Pmenu',
  autofold_depth = 1,
  auto_unfold_hover = true,
  fold_markers = { '', '' },
  wrap = false,
  keymaps = { -- These keymaps can be a string or a table for multiple keys
    close = {"<Esc>", "q"},
    goto_location = "<Cr>",
    focus_location = "o",
    hover_symbol = "<C-space>",
    toggle_preview = "K",
    rename_symbol = "r",
    code_actions = "a",
    fold = "h",
    unfold = "l",
    fold_all = "W",
    unfold_all = "E",
    fold_reset = "R",
  },
  lsp_blacklist = {},
  symbol_blacklist = {},
  symbols = {
    File = { icon = "±", hl = "@text.uri" },
    Module = { icon = "M", hl = "@namespace" },
    Namespace = { icon = "n", hl = "@namespace" },
    Package = { icon = "p", hl = "@namespace" },
    Class = { icon = "𝓒", hl = "@type" },
    Method = { icon = "ƒ", hl = "@method" },
    Property = { icon = "", hl = "@method" },
    Field = { icon = "f", hl = "@field" },
    Constructor = { icon = "", hl = "@constructor" },
    Enum = { icon = "ℰ", hl = "@type" },
    Interface = { icon = "ﰮ", hl = "@type" },
    Function = { icon = "", hl = "@function" },
    Variable = { icon = "", hl = "@constant" },
    Constant = { icon = "", hl = "@constant" },
    String = { icon = "𝓐", hl = "@string" },
    Number = { icon = "#", hl = "@number" },
    Boolean = { icon = "⊨", hl = "@boolean" },
    Array = { icon = "[]", hl = "@constant" },
    Object = { icon = "⦿", hl = "@type" },
    Key = { icon = "🔐", hl = "@type" },
    Null = { icon = "NULL", hl = "@type" },
    EnumMember = { icon = "", hl = "@field" },
    Struct = { icon = "𝓢", hl = "@type" },
    Event = { icon = "E", hl = "@type" },
    Operator = { icon = "+", hl = "@operator" },
    TypeParameter = { icon = "𝙏", hl = "@parameter" },
    Component = { icon = "C", hl = "@function" },
    Fragment = { icon = "F", hl = "@constant" },
  },
}

require("symbols-outline").setup(opts)
