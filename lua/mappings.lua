local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Override `d` commands to use the black hole register but preserve functionality
map("n", "d", '"_d', opts) -- Normal mode deletion
map("v", "d", '"_d', opts) -- Visual mode deletion
map("n", "dd", '"_dd', opts) -- Delete a whole line without affecting clipboard
map("n", "D", '"_D', opts) -- Delete to end of line without affecting clipboard

-- Prevent `daw` and similar commands from entering insert mode
map("n", "c", '"_c', opts)
map("v", "c", '"_c', opts)
map("n", "C", '"_C', opts)

-- Cut current line in normal mode
map("n", "<C-x>", "dd", opts)

-- Cut selected text in visual mode
map("v", "<C-x>", "d", opts)
