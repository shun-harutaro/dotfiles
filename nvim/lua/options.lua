-- set options
local options = {
    encoding = "utf-8",
    fileencoding = "utf-8",
    number = true,
    ruler = true,
    title = true,
    showcmd = true,
    showmatch = true,

    -- tab/indent
    tabstop = 4,
    shiftwidth = 0, -- =tabstop
    smarttab = true,
    smartindent = true,
    expandtab = true,

    list = true,
    hlsearch = true,
    incsearch = true,
    cursorline = true,
    cursorcolumn = true,
    signcolumn = "yes",
    scrolloff = 8, -- 上下8行の視界を確保
}

for key, val in pairs(options) do
    vim.opt[key] = val
end

vim.opt.clipboard:append({unnamedeplus = true})
