local opts = { noremap = true, silent = true }
local term_opts = {silent = true}

-- local keymap = vim.keymap
local keymap = vim.api.nvim_set_keymap

-- Modes
--  normal_mode = 'n'
--  insert_mode = 'i'
--  visual_mode = 'v'
--  visual_mode = 'x'
--  term_mode = 't'
--  command_mode = 'c'

-- Normal --
-- New tab
keymap("n", "te", ":tabedit", opts)
-- Move tab
keymap("n", "gh", "gT", opts)
keymap("n", "gl", "gt", opts)

-- Insert --
-- コンマの後にスペースを挿入
keymap("i", ",", ",<Space>", opts)
--[[ nvim-autopairsで解決
--括弧とクオーテーションを補完
keymap("i", "{", "{}<LEFT>", opts)
keymap("i", "(", "()<LEFT>", opts)
keymap("i", "[", "[]<LEFT>", opts)
keymap("i", "\"", "\"\"<LEFT>", opts)
keymap("i", "'", "''<LEFT>", opts)
--]]
