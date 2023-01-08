local colorscheme = 'everforest'

vim.g.everforest_background = 'medium'
vim.opt.background = 'dark'

local status_ok, _ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)
if not status_ok then
  vim.notify('Colorscheme ' .. colorscheme .. ' not found!')
  return
end
