local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n"
--   insert_mode = "i"
--   visual_mode = "v"
--   visual_block_mode = "x"
--   term_mode = "t"
--   command_mode = "c"

------------
-- Normal --
------------
keymap("n", "<Leader>w", ":w<CR>", opts)
keymap("n", "<Leader>q", ":q<CR>", opts)
keymap("n", "<Leader>e", ":e<CR>", opts)
keymap("n", "<Leader>;", "$a;<Esc>", opts)
keymap("n", "<C-e>", "10<C-e>", opts)
keymap("n", "<C-y>", "10<C-y>", opts)
keymap("n", "<F3>", ":noh<CR>", opts)
keymap("n", "<F2>", ":lua vim.lsp.buf.rename()<CR>", opts)
keymap("n", "<Leader>x", ":Bdelete<CR>", opts)
keymap("n", "<Leader>f", ":Format<CR>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<C-n>", ":NvimTreeToggle<CR>", opts)
keymap("n", "<Leader>r", ":NvimTreeRefresh<CR>", opts)
keymap("n", "<Leader>n", ":NvimTreeFindFile<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-Down>", "<Esc>:m .+1<CR>==", opts)
keymap("n", "<A-Up>", "<Esc>:m .-2<CR>==", opts)

-- Telescope
keymap("n", "<C-p>", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false, hidden=true }))<CR>", opts)
keymap("n", "<Leader>a", "<cmd>Telescope live_grep<CR>", opts)
keymap("n", "<Leader>t", "<cmd>Telescope treesitter<CR>", opts)

------------
-- Visual --
------------
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-Down>", ":m .+1<CR>==", opts)
keymap("v", "<A-Up>", ":m .-2<CR>==", opts)

-- Change selected word
keymap("v", "<C-r>", "\"hy:%s/<C-r>h//gc<left><left><left>", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "<A-Down>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-Up>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
--keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
--keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
--keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
--keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

