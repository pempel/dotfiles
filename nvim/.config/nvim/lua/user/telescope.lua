local ok, telescope = pcall(require, 'telescope')
if not ok then
  return
end

local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

telescope.setup({
  defaults = {
    layout_strategy = 'vertical',
    preview = false,
    file_ignore_patterns = {
      '.git/',
    },
    mappings = {
      i = {
        ['\''] = actions.file_split,
        [';'] = actions.file_vsplit,
        ['<c-j>'] = actions.move_selection_next,
        ['<c-k>'] = actions.move_selection_previous,
        ['<c-n>'] = actions.cycle_history_next,
        ['<c-p>'] = actions.cycle_history_prev,
      },
    },
  },
  pickers = {
    find_files = {
      hidden = true,
    },
    live_grep = {
      additional_args = function(opts)
        return { '--hidden' }
      end,
    },
  },
})

local nmap = function(keys, func, desc)
  vim.keymap.set('n', keys, func, { desc = desc })
end

local find_custom_keymaps = function()
  return builtin.keymaps({
    lhs_filter = function(lhs)
      return string.find(lhs, vim.g.mapleader .. '.') ~= nil
    end,
  })
end

nmap('<leader>k', find_custom_keymaps, 'Find custom [k]eymaps')
nmap('<leader>f', builtin.find_files, 'Find [f]iles')
nmap('<leader>g', builtin.live_grep, 'Live [g]rep')
