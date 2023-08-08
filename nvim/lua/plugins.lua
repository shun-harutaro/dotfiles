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
    { 'nvim-telescope/telescope.nvim', tag = '0.1.2', requires = 'nvim-lua/plenary.nvim' },
    { 'nvim-treesitter/nvim-treesitter' },
    { 'nvim-lualine/lualine.nvim',
      requires = 'nvim-tree/nvim-web-devicons'},
    { 'hrsh7th/nvim-cmp' },
    { 'cocopon/iceberg.vim' }
}