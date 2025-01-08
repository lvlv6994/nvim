 local function my_on_attach(bufnr)
   local api = require("nvim-tree.api")

   local function opts(desc)
     return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
   end

   -- copy default mappings here from defaults in next section
   vim.keymap.set("n", "<C-]>", api.tree.change_root_to_node,          opts("CD"))
   vim.keymap.set("n", "<C-e>", api.node.open.replace_tree_buffer,     opts("Open: In Place"))
   ---
   -- OR use all default mappings
   api.config.mappings.default_on_attach(bufnr)

   -- remove a default
   vim.keymap.del("n", "<C-]>", { buffer = bufnr })
   vim.keymap.del("n", "e", { buffer = bufnr })

   -- override a default
   vim.keymap.set("n", "<C-e>", api.tree.reload,                       opts("Refresh"))

   -- add your mappings
   vim.keymap.set("n", "?",     api.tree.toggle_help,                  opts("Help"))
   ---
 end

require 'nvim-tree'.setup {
    on_attach = my_on_attach,
    auto_reload_on_write = true,
    disable_netrw = false,
    hijack_cursor = false,
    hijack_netrw = true,
    hijack_unnamed_buffer_when_opening = false,
    -- ignore_buffer_on_setup = false,
    -- open_on_setup = false,
    -- open_on_setup_file = false,
    open_on_tab = false,
    sort_by = "name",
    update_cwd = false,
    reload_on_bufenter = false,
    view = {
        width = 30,
        -- height = 30,
        -- hide_root_folder = false,
        side = "left",
        preserve_window_proportions = true,
        number = false,
        relativenumber = false,
        signcolumn = "yes",

    },
    renderer = {
        indent_markers = {
            enable = false,
            icons = {
                corner = "└ ",
                edge = "│ ",
                none = "  ",
            },
        },
        icons = {
            webdev_colors = true,
            git_placement = "before",
        },
    },
    hijack_directories = {
        enable = true,
        auto_open = true,
    },
    update_focused_file = {
        enable = false,
        update_cwd = false,
        ignore_list = {},
    },
    -- ignore_ft_on_setup = {},
    system_open = {
        cmd = "",
        args = {},
    },
    diagnostics = {
        enable = true,
    },
    git = {
        enable = true,
        ignore = true,
        timeout = 400,
    },
    actions = {
        use_system_clipboard = true,
        change_dir = {
            enable = true,
            global = false,
            restrict_above_cwd = false,
        },
        open_file = {
            quit_on_open = false,
            resize_window = true,
            window_picker = {
                enable = true,
                chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
                exclude = {
                    filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
                    buftype = { "nofile", "terminal", "help" },
                },
            },
        },
    },
    trash = {
        cmd = "trash",
        require_confirm = true,
    },
    live_filter = {
        prefix = "[FILTER]: ",
        always_show_folders = true,
    },
    log = {
        enable = false,
        truncate = false,
        types = {
            all = false,
            config = false,
            copy_paste = false,
            diagnostics = false,
            git = false,
            profile = false,
        },
    },


}
