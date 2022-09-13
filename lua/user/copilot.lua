vim.cmd[[imap <silent><script><expr> <C-u> copilot#Accept("\<CR>")]]
vim.g.copilot_no_tab_map = true

vim.cmd[[highlight CopilotSuggestion guifg=#797a8f ctermfg=8]]
