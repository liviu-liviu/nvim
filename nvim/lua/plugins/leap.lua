return {
  "ggandor/leap.nvim",

  config = function(_, _opts)
    -- add your own keymaps here
	require('leap').add_default_mappings()
	vim.keymap.del({ "n", "x", "o" }, 'gs')
    vim.keymap.set({ "n", "x", "o" }, "js", "<Plug>(leap-from-window)", { desc = "leap-from-window" })
  end,
}
