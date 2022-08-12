-- Modes
--   normal_mode = 'n'
--   insert_mode = 'i'
--   visual_mode = 'v'
--   visual_block_mode = 'x'
--   term_mode = 't'
--   command_mode = 'c'

local function keymap(mode, lhs, rhs)
  vim.api.nvim_set_keymap(mode, lhs, rhs, { noremap = true })
end

-- Use space as <leader>
keymap('', '<space>', '<nop>')
vim.g.mapleader = ' '

-- Simplify window navigation
keymap('n', '<c-h>', '<c-w>h')
keymap('n', '<c-j>', '<c-w>j')
keymap('n', '<c-k>', '<c-w>k')
keymap('n', '<c-l>', '<c-w>l')

-- nvim-tree
keymap('n', '<leader>e', ':NvimTreeToggle<cr>')

-- telescope
keymap('n', '<leader>f', ':Telescope find_files<cr>')
keymap('n', '<leader>t', ':Telescope live_grep<cr>')

-- gitsigns
keymap('n', '<leader>b', ':Gitsigns blame_line<cr>')
