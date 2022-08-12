local status_ok, lualine = pcall(require, 'lualine')
if not status_ok then
  return
end

local function location()
  return vim.fn.line('.') .. '/' .. vim.fn.line('$') .. ':' .. vim.fn.col('.')
end

lualine.setup {
  options = {
    theme = 'everforest',
    icons_enabled = false,
    globalstatus = true,
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
    ignore_focus = { 'NvimTree' },
    refresh = {
      statusline = 10
    }
  },
  sections = {
    lualine_a = { 'filename' },
    lualine_b = { location },
    lualine_c = {},
    lualine_x = {},
    lualine_y = { 'encoding' },
    lualine_z = { 'branch' }
  }
}
