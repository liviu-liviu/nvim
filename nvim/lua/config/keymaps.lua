local map = vim.keymap

map.set("n", "<leader>e", vim.cmd.Ex, {desc = "open file explorer"})

-- Take line  below the cursor, append it to the current line. Don't
-- change cursor position.
map.set("n", "J", "mzJ`z")

map.set("n", "<leader>x", "<cmd>!chmod u+x %<CR>", {silent = true, desc = "make current file executable"})
