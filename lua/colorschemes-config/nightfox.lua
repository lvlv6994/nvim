require('nightfox').setup({
    options = {
        styles = {
            comments = "italic",
            keywords = "bold",
            types = "italic,bold",
        }
    }
})


vim.cmd [[ colorscheme default ]]
vim.cmd [[ hi NonText guifg=bg ]]
