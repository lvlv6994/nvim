require('nightfox').setup({
    options = {
        styles = {
            comments = "italic",
            keywords = "bold",
            types = "italic,bold",
        },
        colorblind = {
            enable = true;
            severity = {
                protan = 0.3,
                deutan = 0.6,
            },
        },
    }
})


vim.cmd [[ colorscheme habamax ]]
vim.cmd [[ hi NonText guifg=bg ]]
