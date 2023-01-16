local ok, lualine = pcall(require, 'lualine')
if not ok then
  return
end

local location = function()
  local l = vim.fn.line
  local c = vim.fn.col
  return l('.') .. '/' .. l('$') .. ':' .. c('.') .. '/' .. c('$')
end

lualine.setup({
  options = {
    theme = 'everforest',
    icons_enabled = false,
    globalstatus = true,
    section_separators = { left = '', right = '' },
    component_separators = { left = ' ', right = ' ' },
    ignore_focus = { 'NvimTree' },
    refresh = {
      statusline = 10,
    },
  },
  sections = {
    lualine_a = { 'filename' },
    lualine_b = { location },
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'branch' },
  },
})
