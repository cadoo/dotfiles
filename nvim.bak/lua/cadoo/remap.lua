local nnoremap = require("cadoo.keymap").nnoremap

nnoremap("<leader>e", "<cmd>Ex<CR>")
nnoremap("<C-j>", "ddp<CR>")
nnoremap("<C-k>", "ddkp<CR>")

nnoremap("<leader><Tab>", "<cmd>BufferLineCycleNext<CR>")

-- Save file
vim.keymap.set("n", "<leader>s", ":w<CR>")

-- ## Laracasts Nvim as IDE ##
-- Disable command line typo
vim.keymap.set("n", "q:", ":q")

-- Move text up and down
vim.keymap.set('i', '<A-j>', '<Esc>:move .+1<CR>==gi')
vim.keymap.set('i', '<A-k>', '<Esc>:move .-2<CR>==gi')
vim.keymap.set('n', '<C-j>', ':move .+1<CR>==')
vim.keymap.set('n', '<C-k>', ':move .-2<CR>==')
vim.keymap.set('v', '<A-j>', ":move '>+1<CR>gv-gv")
vim.keymap.set('v', '<A-k>', ":move '<-2<CR>gv-gv")

vim.keymap.set("n", "<leader>c", "<cmd>bd<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Copy to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Delete without copying to register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)
