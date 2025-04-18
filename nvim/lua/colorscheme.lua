vim.cmd 'autocmd ColorScheme * highlight Normal ctermbg=none guibg=none'
vim.cmd 'autocmd ColorScheme * highlight NonText ctermbg=none guibg=none'
vim.cmd 'autocmd ColorScheme * highlight LineNr ctermbg=none guibg=none'
vim.cmd 'autocmd ColorScheme * highlight Folded ctermbg=none guibg=none'
vim.cmd 'autocmd ColorScheme * highlight EndOfBuffer ctermbg=none guibg=none'
local iceberg_file = vim.fn.stdpath("data") .. "/site/pack/jetpack/opt/iceberg.vim/colors/iceberg.vim"
if vim.fn.filereadable(iceberg_file) == 0 then
    print("iceberg is not available")
else
    vim.cmd 'colorscheme iceberg'
    --vim.cmd('colorscheme kanagawa')
end
