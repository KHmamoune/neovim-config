return {
  "ThePrimeagen/harpoon",
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { mode = "n", '<leader>h', ':lua require("harpoon.ui").nav_file(1)<CR>',         { noremap = true, silent = true } },
    { mode = "n", '<leader>j', ':lua require("harpoon.ui").nav_file(2)<CR>',         { noremap = true, silent = true } },
    { mode = "n", '<leader>k', ':lua require("harpoon.ui").nav_file(3)<CR>',         { noremap = true, silent = true } },
    { mode = "n", '<leader>l', ':lua require("harpoon.ui").nav_file(4)<CR>',         { noremap = true, silent = true } },
    { mode = "n", '<leader>;', ':lua require("harpoon.ui").nav_file(5)<CR>',         { noremap = true, silent = true } },
    { mode = "n", '<leader>i', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', { noremap = true, silent = true } },
    { mode = "n", '<leader>o', ':lua require("harpoon.mark").add_file()<CR>',        { noremap = true, silent = true } },
  },

  opts = {}
}
