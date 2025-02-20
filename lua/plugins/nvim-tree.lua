return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  keys = {
    { mode = "n", '<C-n>',      '<cmd>NvimTreeToggle<CR>',   { noremap = true, silent = true } },
    { mode = "n", '<leader>R',  '<cmd>NvimTreeRefresh<CR>',  { noremap = true, silent = true } },
    { mode = "n", '<leader>ff', '<cmd>NvimTreeFindFile<CR>', { noremap = true, silent = true } },
  },

  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    require 'nvim-tree'.setup { -- BEGIN_DEFAULT_OPTS
      auto_reload_on_write = true,
      disable_netrw = true,
      hijack_cursor = false,
      hijack_netrw = true,
      hijack_unnamed_buffer_when_opening = false,
      sort_by = "name",
      update_cwd = false,
      -- renderer = {
      --   icons = {
      --     show = {
      --       file = false,
      --       folder = false,
      --       folder_arrow = false,
      --       git = false,
      --       modified = false,
      --     },
      --   },
      -- },
      view = {
        width = 30,
        side = "left",
        preserve_window_proportions = false,
        number = false,
        relativenumber = false,
        signcolumn = "yes",
      },
      hijack_directories = {
        enable = true,
        auto_open = true,
      },
      update_focused_file = {
        enable = false,
        update_cwd = false,
        ignore_list = {},
      },
      system_open = {
        cmd = nil,
        args = {},
      },
      diagnostics = {
        enable = false,
        show_on_dirs = false,
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        },
      },
      filters = {
        dotfiles = false,
        custom = {},
        exclude = {},
      },
      git = {
        enable = true,
        ignore = false,
        timeout = 400,
      },
      actions = {
        change_dir = {
          enable = true,
          global = false,
        },
        open_file = {
          quit_on_open = false,
          resize_window = false,
          window_picker = {
            enable = true,
            chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
            exclude = {
              filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
              buftype = { "nofile", "terminal", "help" },
            },
          },
        },
      },
      trash = {
        cmd = "trash",
        require_confirm = true,
      },
      log = {
        enable = false,
        truncate = false,
        types = {
          all = false,
          config = false,
          git = false,
        },
      },
    } -- END_DEFAULT_OPTS
  end,
}
