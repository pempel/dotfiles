local status_ok, nvim_tree = pcall(require, 'nvim-tree')
if not status_ok then
  return
end

nvim_tree.setup({
  view = {
    side = 'right',
    width = 40,
    mappings = {
      list = {
        { key = '<c-x>', action = 'split' },
        { key = '<c-v>', action = 'vsplit' },
        { key = 'a', action = 'create' },
        { key = 'd', action = 'remove' },
        { key = 'x', action = 'cut' },
        { key = 'c', action = 'copy' },
        { key = 'p', action = 'paste' },
        { key = 'e', action = 'expand_all' }
      }
    }
  },
  git = {
    enable = false
  }
})
