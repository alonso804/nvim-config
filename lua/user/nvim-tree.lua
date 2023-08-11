local tree = require("nvim-tree").setup({
  -- open_on_setup = true,
  view = {
    width = 30,
    mappings = {
      list = {
        { key = { "l", "<CR>", "o" }, action = "edit" },
        { key = "h", action = "close_node" },
        { key = "<C-s>", action = "split" },
        { key = "<C-v>", action = "vsplit" },
      }
    }
  },
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
})

return tree
