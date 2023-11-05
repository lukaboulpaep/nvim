return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "truncate " },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
			},
		})

		telescope.load_extension("fzf")

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>ff", "<CMD>Telescope find_files<CR>", {})
		keymap.set("n", "<leader>fa", "<CMD>Telescope find_files find_command=rg,--ignore,--hidden,--files<CR>", {})
		keymap.set("n", "<leader>fw", "<CMD>Telescope live_grep find_command=rg,--ignore,--hidden,--files<CR>", {})

		-- lsp
		keymap.set("n", "<leader>dd", "<CMD>Telescope diagnostics<CR>", {})
	end,
}
