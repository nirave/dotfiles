vim.api.nvim_create_autocmd("Filetype", {
    pattern = "c,cpp,cc,h",
    callback = function()
        vim.opt_local.shiftwidth = 8
        vim.opt_local.tabstop = 8
    end
})
