return {
	"tpope/vim-fugitive",
	config = function()
		vim.keymap.set("n", "<leader>g", "<cmd>vert Git<CR><C-w>60<", {desc = "fugitive summary"})
	end,
}
