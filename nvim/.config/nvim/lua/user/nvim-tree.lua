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
        { key = 'x', action = 'split' },
        { key = 'v', action = 'vsplit' },
        { key = 'e', action = 'expand_all' }
      }
    }
  },
  git = {
    enable = false
  }
})
