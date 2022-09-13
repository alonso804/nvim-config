vim.opt.list = true
--vim.opt.listchars:append "space:⋅"

vim.cmd [[highlight IndentBlanklineIndent1 guifg=#565757 gui=nocombine]]

-- Install your plugins here
require("indent_blankline").setup {
  --space_char_blankline = " ",
  char_highlight_list = {
    "IndentBlanklineIndent1",
  },
  --space_char_highlight_list = {
  --  "IndentBlanklineIndent1",
  --},
  show_current_context = true,
}
