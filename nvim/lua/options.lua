-- set options
local options = {
    encoding = "utf-8",
    fileencoding = "utf-8",
    number = true,
    ruler = true,
    smarttab = true,
    expandtab = true,
}

for key, val in pairs(options) do 
    vim.opt[key] = val
end