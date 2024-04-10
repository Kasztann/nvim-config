return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep' }
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    { "nvim-treesitter/nvim-treesitter",  build = ":TSUpdate", lazy = false, priority = 1000 },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },

    {
        "rose-pine/neovim",
        name = "rose-pine",
        lazy = false,
        priority = 1000
    },

    -- LSP ZERO
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    {
        "L3MON4D3/LuaSnip",
        dependencies = { "rafamadriz/friendly-snippets" },
    },
    -- LSP ZERO

    -- {
    --     'nvim-tree/nvim-tree.lua',
    --     dependencies = { 'nvim-tree/nvim-web-devicons' },
    --     config = function()
    --         require("nvim-tree").setup()
    --     end
    -- },

    { 'xiyaowong/transparent.nvim', lazy = false,                                    priority = 1000 },
    { "folke/todo-comments.nvim",   dependencies = { "nvim-lua/plenary.nvim" } },
    { 'nvim-lualine/lualine.nvim',  dependencies = { 'nvim-tree/nvim-web-devicons' } },

    {
        'numToStr/Comment.nvim',
        opts = {
            -- add any options here
            lazy = false
        }
    },
    { 'ThePrimeagen/vim-be-good' },
    { 'hrsh7th/vim-vsnip' },
    { 'ionide/Ionide-vim' },
    { 'kmonad/kmonad-vim' },
    {
        'olexsmir/gopher.nvim',
        ft = "go",
        config = function()
            require("gopher").setup({
                commands = {
                    go = "go",
                    gomodifytags = "gomodifytags",
                    gotests = "~/go/bin/gotests", -- also you can set custom command path
                    impl = "impl",
                    iferr = "iferr",
                },
            })
        end,
        build = function()
            vim.cmd [[silent! GoInstallDeps]]
        end,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter"
        }
    },

    {
        "vhyrro/luarocks.nvim",
        config = function()
            require("luarocks").setup({})
        end,
    },
    {
        "rest-nvim/rest.nvim",
        ft = "http",
        dependencies = { "luarocks.nvim" },
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
        -- use opts = {} for passing setup options
        -- this is equalent to setup({}) function
    },
    { 'kevinhwang91/rnvimr',         lazy = false, },
    { 'jmederosalvarado/roslyn.nvim' }
}
