local status, nightfly = pcall(vim.cmd, "colorscheme nightfly")
if not status then
    print("Colorscheme not found!")
    return
end
