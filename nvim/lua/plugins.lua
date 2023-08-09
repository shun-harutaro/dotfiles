local fn = vim.fn

-- Automatically install vim-jetpack
local jetpackfile = fn.stdpath('data') .. '/site/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim'
local jetpackurl = "https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim"
if fn.filereadable(jetpackfile) == 0 then
  fn.system(string.format('curl -fsSLo %s --create-dirs %s', jetpackfile, jetpackurl))
  print("Installing vim-jetpack close and reopen Neovim...")
end

vim.cmd('packadd vim-jetpack')
require('jetpack.packer').add {
    { 'tani/vim-jetpack' },

    --appearance
    { 'cocopon/iceberg.vim' },
    { 'nvim-lualine/lualine.nvim', requires = 'nvim-tree/nvim-web-devicons'},
    { 'lewis6991/gitsigns.nvim' },
    { 'lukas-reineke/indent-blankline.nvim' },
    { 'j-hui/fidget.nvim', tag = 'legacy' },
    { 'https://git.sr.ht/~whynothugo/lsp_lines.nvim' },

    -- utility
    -- cmp
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-cmdline' },
    -- others
    { 'nvim-telescope/telescope.nvim', tag = '0.1.2', requires = 'nvim-lua/plenary.nvim' },
    { 'nvim-treesitter/nvim-treesitter' },
    { 'windwp/nvim-autopairs' },
    { 'nvim-telescope/telescope-file-browser.nvim' },

    -- LSP
    { 'neovim/nvim-lspconfig' },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim'},
}

require('lualine').setup()
require('gitsigns').setup()
require('fidget').setup()
require('nvim-autopairs').setup()
require('lsp_lines').setup()
require('telescope').load_extension "file_browser"

require'nvim-treesitter.configs'.setup({
    highlight = {
        enable = true,
    },
    Indent = {
        eneble = true,
    }
})

local lspconfig = require('lspconfig')
--lspconfig.pyright.setup {}
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
require('mason-lspconfig').setup()
require('mason-lspconfig').setup_handlers({
    function(server_name)
        lspconfig[server_name].setup({
            settings = {
                Lua = {
                    diagnostics = {
                        globals = {'vim'}
                    }
                }
            }
        })
    end,
})

local cmp = require'cmp'
cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.close(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
        { name = "nvim_lsp" },
    }, {
        { name = "buffer" },
    })
})

vim.diagnostic.config({ virtual_text = false })
