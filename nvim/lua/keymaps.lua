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
keymap("n", "tn", ":tabnew<CR>", opts)
-- Move tab
--keymap("n", "gh", "gT", opts)
--keymap("n", "gl", "gt", opts)
-- Split window
keymap("n", "ss",  ":split<CR>", opts)
keymap("n", "sv",  ":vsplit<CR>", opts)

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
-- ESC連打でハイライト解除
keymap("n", "<Esc><Esc>", ":nohlsearch<CR><Esc>", opts)
-- ファイルブラウザを展開
keymap(
    "n",
    "fe",
    ":Telescope file_browser<CR>",
    { noremap = true }
)
keymap("n", "ff", ":Telescope find_files<CR>", opts)
keymap("n", "fg", ":Telescope live_grep<CR>", opts)
keymap("n", "fb", ":Telescope buffers<CR>", opts)
keymap("n", "fh", ":Telescope help_tags<CR>", opts)
keymap("n", "fr", ":Telescope registers<CR>", opts)
