-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Themes
    use { "catppuccin/nvim", as = "catppuccin" }
    use "EdenEast/nightfox.nvim"
    use "rebelot/kanagawa.nvim"
    use "sainnhe/everforest"
    use 'nyoom-engineering/oxocarbon.nvim'
    use "savq/melange-nvim"
    use { 'embark-theme/vim', as = 'embark' }
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            require("rose-pine").setup({
                dark_variant = 'moon'
            })
        end
    })

    use 'ThePrimeagen/vim-be-good'

    use 'nvim-lualine/lualine.nvim'
    use {
        'akinsho/bufferline.nvim',
        tag = "v3.*",
    }

    use 'mbbill/undotree'

    use 'tpope/vim-fugitive'
    use 'tpope/vim-unimpaired'
    -- use 'tpope/vim-sleuth' -- Detect tabstop and shiftwidth automatically

    use {
        'nmac427/guess-indent.nvim',
        config = function()
            require('guess-indent').setup()
        end
    }

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use "lukas-reineke/indent-blankline.nvim"

    -- Remove trailing spaces
    use {
        'lewis6991/spaceless.nvim',
        config = function()
            require'spaceless'.setup()
        end
    }

    -- aligning text by some character, gl and gL keymaps
    use 'tommcdo/vim-lion'

    use({
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            require('nvim-tree').setup()
        end,
    })

    use({
        'lewis6991/gitsigns.nvim',
        requires = 'nvim-lua/plenary.nvim',
        config = function()
            require('gitsigns').setup({
                sign_priority = 20,
                on_attach = function(bufnr)
                    vim.keymap.set('n', ']h', "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'", { expr = true, buffer = bufnr })
                    vim.keymap.set('n', '[h', "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'", { expr = true, buffer = bufnr })
                end,
            })
        end,
    })

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            -- Snippet Collection (Optional)
            {'rafamadriz/friendly-snippets'},
        }
    }

    use "b0o/schemastore.nvim"

    -- showing diagnostics, references, telescope results, quickfix
    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup()
        end
    }

    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    -- Browse/search in browser
    use({
        "lalitmee/browse.nvim",
        requires = { "nvim-telescope/telescope.nvim" },
    })

    use 'j-hui/fidget.nvim'

    use({
        'windwp/nvim-autopairs',
        config = function()
            require('nvim-autopairs').setup()
        end,
    })

    use 'sickill/vim-pasta'

    -- Center buffer
    use {"shortcuts/no-neck-pain.nvim", tag = "*" }
end)
