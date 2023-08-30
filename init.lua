-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	print("[init.lua]", lazypath, "not found. Will use git clone ...")
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Set leader before lazy.nvim setup
vim.g.mapleader = " "

-- Setup lazy.nvim
require("lazy").setup({
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		config = function () 
			local wk = require("which-key")
			wk.register({
				f = {
					name = "file", -- group name
				},
			}, { prefix = "<leader>" })
		end,
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		}
	},

	{
		'numToStr/Comment.nvim',
		opts = {
			-- add any options here
		},
		lazy = false,
		config = function () 
			require('Comment').setup()
		end
	},

	{ "folke/neoconf.nvim", cmd = "Neoconf" },

	"folke/neodev.nvim",

	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function () 
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				ensure_installed = { "c", "lua", "vim", "vimdoc", "rust" },
				sync_install = false,
			highlight = { enable = true },
				indent = { enable = true },  
			})
		end
	},

	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.2',
		-- or branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
			local builtin = require('telescope.builtin')
			vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "find"})
			vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = "grep"})
			vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = "buffers"})
			vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = "help_tags"})
		end

	},
})

print("[init.lua] End of init.lua")
