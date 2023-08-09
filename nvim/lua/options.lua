-- set options
local options = {
    encoding = "utf-8",
    fileencoding = "utf-8",
    number = true,
    ruler = true,
    smarttab = true,
    expandtab = true,
    signcolumn = "yes",
    tabstop = 4,
    shiftwidth = 4,
    scrolloff = 8,
}

for key, val in pairs(options) do
    vim.opt[key] = val
end
