require('telescope').setup({
    defaults = {
        layout_strategy = 'vertical',
        layout_config = {
            vertical = { width = 0.8 }
            -- other layout configuration here
        },
        -- other defaults configuration here
        path_display = { shorten = 1 }
    },
    -- other configuration values here
    pickers = {
        find_files = {
            theme = "dropdown",
            previewer = false,
        }
    },
    extensions = {
    }
})
