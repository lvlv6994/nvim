return require 'packer'.startup(function()
    -- Packer manage tools configuration
    use 'wbthomason/packer.nvim'
    -- theme settings
    use 'EdenEast/nightfox.nvim'
    -- use 'vifm/vifm.vim'
    -- which key
--    use 'linty-org/key-menu.nvim'
    -- nerdtree settings
    use 'kyazdani42/nvim-tree.lua'
    use 'kyazdani42/nvim-web-devicons'
    -- notify box
    use ({
        'rcarriga/nvim-notify',
        config = function ()
            vim.notify = require("notify")
        end
    })
    use {'nvim-lualine/lualine.nvim',requires={'nvim-tree/nvim-web-devicons',opt = true}}
    -- use 'romgrk/barbar.nvim'
    use { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/plenary.nvim' } } }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'nvim-treesitter/nvim-treesitter-refactor'
    use { 'nvim-orgmode/orgmode', config = function() require('orgmode').setup {} end }
    use { 'lukas-reineke/headlines.nvim', config = function() require('headlines').setup() end, }
    use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client
    -- not use the the installer you can use the os software manager such as brew and apt-get to install the lsp client
    -- and the best way is the most simple way 
    -- use {"williamboman/nvim-lsp-installer", requires = { { "nvim-lua/lsp-status.nvim" } }}
    -- java language support and now question can not open the source file and use the vim config and can open the file 
    -- and more and more configuration use the extensions and not use the vim configuration 
    -- use 'mfussenegger/nvim-jdtls'
    use { 'rmagatti/goto-preview', config = function() require('goto-preview').setup {} end }
    use 'mhinz/vim-signify'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'
    -- terminal and use the <cmd>terminal is useful and can be used to open the terminal and use the Chinese language
    use 'voldikss/vim-floaterm'
    use 'jiangmiao/auto-pairs'
    -- comment
    use 'tpope/vim-commentary'
    -- Autocompletion plugin and the implementation of the plugin is based on the scripts and language server 
    use 'hrsh7th/nvim-cmp' 
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    -- the lua scripts is used to implement the lua language support and the lua language server is used to implement the lua language support
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    -- code completion
    -- use 'github/copilot.vim'
    use 'editorconfig/editorconfig-vim'
    -- tags
    use 'vim-scripts/taglist.vim'
    use {'edluffy/hologram.nvim'}
    -- html
    use 'mattn/emmet-vim'
    -- format
    use 'vim-autoformat/vim-autoformat'
    -- glow
    use {"ellisonleao/glow.nvim",config=function () require("glow").setup({
      glow_path = "/opt/homebrew/bin/glow", -- will be filled automatically with your glow bin in $PATH, if any
      install_path = "~/.local/bin", -- default path for installing glow binary
      border = "shadow", -- floating window border config
      style = "dark|light", -- filled automatically with your current editor background, you can override using glow json style
      pager = false,
      width = 80,
      height = 100,
      width_ratio = 0.7, -- maximum width of the Glow window compared to the nvim window size (overrides `width`)
      height_ratio = 0.7,
    }) end}
    use({
      "saghen/blink.cmp",
      version = "*",
      opts = {
        sources = {
          -- Change the sources to suit your config
          default = { "lsp", "path", "buffer", "codecompanion" },
          providers = {
            codecompanion = {
              name = "CodeCompanion",
              module = "codecompanion.providers.completion.blink",
            },
          },
        },
      },
    })
    use({
      "olimorris/codecompanion.nvim",
      config = function()
            require("codecompanion").setup({
                providers = {
                    gemini = {
                        api_key = "AIzaSyAHjcD2ApEjtuGc8z2irZ7hmVh45UNaeJ0"
                    }
                }
            })
      end,
      requires = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
      }
    })
    use({
        '3rd/image.nvim',
        config = function ()
            require("image").setup({
              backend = "kitty",
              -- processor = "magick_rock", -- or "magick_cli"
              -- processor = "magick_cli",
              integrations = {
                markdown = {
                  enabled = true,
                  clear_in_insert_mode = false,
                  download_remote_images = true,
                  only_render_image_at_cursor = false,
                  floating_windows = false, -- if true, images will be rendered in floating markdown windows
                  filetypes = { "markdown", "vimwiki" }, -- markdown extensions (ie. quarto) can go here
                },
                neorg = {
                  enabled = true,
                  filetypes = { "norg" },
                },
                typst = {
                  enabled = true,
                  filetypes = { "typst" },
                },
                html = {
                  enabled = false,
                },
                css = {
                  enabled = false,
                },
              },
              max_width = nil,
              max_height = nil,
              max_width_window_percentage = nil,
              max_height_window_percentage = 50,
              window_overlap_clear_enabled = false, -- toggles images when windows are overlapped
              window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "snacks_notif", "scrollview", "scrollview_sign" },
              editor_only_render_when_focused = false, -- auto show/hide images when the editor gains/looses focus
              tmux_show_only_in_active_window = false, -- auto show/hide images in the correct Tmux window (needs visual-activity off)
              hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.avif" }, -- render image files as images when opened
            })
        end

    })

    use({
        'MeanderingProgrammer/render-markdown.nvim',
        after = { 'nvim-treesitter' },
        -- requires = { 'echasnovski/mini.nvim', opt = true }, -- if you use the mini.nvim suite
        -- requires = { 'echasnovski/mini.icons', opt = true }, -- if you use standalone mini plugins
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }, -- if you prefer nvim-web-devicons
        config = function()
            require('render-markdown').setup({})
        end,
    })

    use ({
        "meatballs/notebook.nvim",
        config = function ()
            require('notebook').setup {
            -- Whether to insert a blank line at the top of the notebook
            insert_blank_line = true,

            -- Whether to display the index number of a cell
            show_index = true,

            -- Whether to display the type of a cell
            show_cell_type = true,

            -- Style for the virtual text at the top of a cell
            virtual_text_style = { fg = "lightblue", italic = true },
        }
        end
    })

end)

