local colorscheme = 'everforest'

vim.opt.background = 'light'
vim.g.everforest_background = 'hard'

local ok, _ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)
if not ok then
  vim.notify('Colorscheme ' .. colorscheme .. ' not found!')
  return
end

vim.cmd([[highlight ErrorMsg gui=none]])
