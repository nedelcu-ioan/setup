vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- plugin manager
    use 'wbthomason/packer.nvim'

    -- fuzzy finder for files 
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2', requires = { {'nvim-lua/plenary.nvim'} }
    }
    
    -- indent fisualizer 
    use "lukas-reineke/indent-blankline.nvim"
    
    -- language server (lsp)
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
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
            {'rafamadriz/friendly-snippets'},
        }
    }

    -- practice 
    use {
        "ThePrimeagen/vim-be-good"
    }
end)
