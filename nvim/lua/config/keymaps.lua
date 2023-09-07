local map = vim.keymap

map.set("n", "<leader>e", vim.cmd.Ex, {desc = "open file explorer"})

-- Take line  below the cursor, append it to the current line. Don't
-- change cursor position.
map.set("n", "J", "mzJ`z")

map.set("n", "<leader>x", "<cmd>!chmod u+x %<CR>", {silent = true, desc = "make current file executable"})

map.set("n", "<leader>o", 'o<Esc>0"_D', {desc = "insert empty line below"})
map.set("n", "<leader>O", 'O<Esc>0"_D', {desc = "insert empty line above"})

map.set("n", "<leader>h", "<cmd>set hlsearch!<CR>", {desc = "toggle hlsearch"})

map.set({"n", "v"}, "<leader>y", '"+y', {noremap = true, desc = "yank into PRIMARY"})
map.set({"n", "v"}, "<leader>p", '"+p', {noremap = true, desc = "past from PRIMARY"})
map.set({"n", "v"}, "<leader>Y", '"*y', {noremap = true, desc = "yank into CLIPBOARD"})
map.set({"n", "v"}, "<leader>P", '"*p', {noremap = true, desc = "past from CLIPBOARD"})
