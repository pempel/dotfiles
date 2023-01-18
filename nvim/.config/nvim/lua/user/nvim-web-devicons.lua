local ok, nvim_web_devicons = pcall(require, 'nvim-web-devicons')
if not ok then
  return
end

nvim_web_devicons.setup({
  override = {
    ["md"] = {
      icon = "",
      color = "#41535b",
      cterm_color = "59",
      name = "Md",
    },
    ['Brewfile'] = {
      icon = '',
      color = '#f0b357',
      name = 'Brewfile',
    },
    ['.zshrc'] = {
      icon = '',
      color = '#6d8086',
      name = 'Zshrc',
    },
    ['skhdrc'] = {
      icon = '',
      color = '#6d8086',
      name = 'Skhdrc',
    },
    ['config'] = {
      icon = '',
      color = '#6d8086',
      name = 'Config',
    },
  },
})
