return {
    "EdenEast/nightfox.nvim",

    priority = 1000,

    config = function()
        vim.o.background = "dark"

        vim.cmd("colorscheme carbonfox")
    end
}
