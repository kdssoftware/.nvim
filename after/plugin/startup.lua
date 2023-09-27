local settings = {
    header = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Header",
        margin = 5,
        content = {
            " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
            " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
            " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
            " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
            " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
            " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝"
        },
        highlight = "Statement",
        default_color = "",
        oldfiles_amount = 0
    },
    body = {
        type = "mapping",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Basic Commands",
        margin = 5,
        content = {
            {" Find File", "Telescope find_files", "<leader>pf"},
            {"󰊄 Find Text", "Telescope live_grep", "<leader>pg"},
            {" Toggle symbols", "SymbolsOutline", "<leader>pe"},
            {"󰊢 Open Git", "Git", "<leader>gs"},
            {"󰙅 Toggle Tree", "NvimTreeToggle", "<leader>pv"},
            {"󰓾 Target in tree", "NvimTreeFindFile", "<leader>pt"}
        },
        highlight = "String",
        default_color = "",
        oldfiles_amount = 0
    },
    footer = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Footer",
        margin = 5,
        content = {"startup.nvim"},
        highlight = "Number",
        default_color = "",
        oldfiles_amount = 0
    },
    options = {
        mapping_keys = true,
        cursor_column = 0.5,
        empty_lines_between_mappings = true,
        disable_statuslines = false,
        paddings = {1, 3, 3, 0}
    },
    mappings = {
        ["<leader>pv"] = "<cmd>NvimTreeToggle<CR>",
        ["<leader>pt"] = "<cmd>NvimTreeFindFile<CR>",
        ["<leader>pe"] = "<cmd>SymbolsOutline<CR>",
        ["<leader>gs"] = "<cmd>Git<CR>",
        ["<leader>pf"] = "<cmd>Telescope find_files<CR>",
        ["<leader>pg"] = "<cmd>Telescope live_grep<CR>",
        ["<leader>pa"] = "<cmd>Telescope git_files<CR>"
    },
    colors = {background = "#1f2227", folded_section = "#56b6c2"},
    parts = {"header", "body", "footer"},
}
return settings
