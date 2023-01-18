local colorscheme = 'everforest'

vim.g.everforest_background = 'hard'
vim.opt.background = 'light'

local ok, _ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)
if not ok then
  vim.notify('Colorscheme ' .. colorscheme .. ' not found!')
  return
end
