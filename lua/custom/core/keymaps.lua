local function map(mode, lhs, rhs, opts)
	-- no remap non recursive
	-- silent no echo 
	local options = {noremap = true, silent = true}
	if opts then
		options = vim.tbl_extend('force', options, opts)
	end

	vim.api.nvim_set_keymap(mode, lhs, rhs, options)

end

-- Personal shortcut
-- No arrow keys
map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')

-- Mapping in insert mode navigation
map('i', '<C-k>', '<up>')
map('i', '<C-j>', '<down>')
map('i', '<C-h>', '<left>')
map('i', '<C-l>', '<right>')

-- NeoTree
map('n','<C-n>', ':Neotree toggle<CR>')
