return {
	"scrooloose/nerdtree",
	dependencies = {
		"ryanoasis/vim-devicons"
	},
	config = function()
		vim.keymap.set({'n', 'i', 'v'}, '<C-t>', function() vim.cmd [[NERDTree]] end)
		vim.keymap.set({'n', 'i', 'v'}, '<C-r>', function() vim.cmd [[NERDTreeClose]] end)
		vim.keymap.set({'n', 'i', 'v'}, '<C-f>', function() vim.cmd [[NERDTreeFocus]] end)
	end
}
