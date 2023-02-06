local ok, nvim_tree = pcall(require, 'nvim-tree')
if not ok then
  return
end

nvim_tree.setup({
  open_on_setup = true,
  view = {
    side = 'right',
    width = 35,
    hide_root_folder = true,
    signcolumn = 'no',
    mappings = {
      list = {
        { key = '<C-k>', action = '' },
        { key = '<Tab>', action = 'preview' },
        { key = '\'', action = 'split' },
        { key = ';', action = 'vsplit' },
        { key = 'i', action = 'toggle_file_info' },
        { key = 'a', action = 'create' },
        { key = 'd', action = 'remove' },
        { key = 'r', action = 'rename' },
        { key = 'x', action = 'cut' },
        { key = 'c', action = 'copy' },
        { key = 'p', action = 'paste' },
        { key = 'e', action = 'expand_all' },
      },
    },
  },
  git = {
    enable = false,
  },
})

vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<cr>', {
  silent = true,
  desc = 'Toggle [t]ree view'
})

vim.cmd([[highlight NvimTreeNormal guibg=none]])
vim.cmd([[highlight NvimTreeEndOfBuffer guibg=none]])
vim.cmd([[highlight NvimTreeCursorLine guibg=#f8f5e4]])
