local ok, gitsigns = pcall(require, 'gitsigns')
if not ok then
  return
end

gitsigns.setup({
  preview_config = {
    border = 'rounded',
  },
})

vim.keymap.set('n', '<leader>b', ':Gitsigns blame_line<cr>', {
  desc = 'Run git [b]lame on the current line'
})
