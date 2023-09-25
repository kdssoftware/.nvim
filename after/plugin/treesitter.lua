local status, ts = pcall(require, "nvim-treesitter.configs")
if not status then
    return
end

ts.setup({
  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,
  -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    context_commentstring = {
        enable = true,
        enable_autocmd = false,
    },
    ensure_installed = {
        "markdown",
        "tsx",
        "typescript",
        "javascript",
        "toml",
        "c_sharp",
        "json",
        "yaml",
        "rust",
        "css",
        "html",
        "lua",
        "go",
        "c",
    },
    rainbow = {
        enable = true,
        disable = { "html" },
        extended_mode = false,
        max_file_lines = nil,
    },
    autotag = { enable = true },
    incremental_selection = { enable = true },
    indent = { enable = true },
})

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
