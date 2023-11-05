return {
	"nvim-tree/nvim-tree.lua",
	lazy = true,
	opts = {},
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	cmd = {
		"NvimTreeToggle",
	},
	keys = {
		{ "<leader>e", "<CMD>NvimTreeToggle<CR>", {} },
	},
}
