local status_ok, nvim_web_devicons = pcall(require, 'nvim-web-devicons')
if not status_ok then
  return
end

local function conf_icon(name)
  return {
    icon = '',
    color = '#6d8086',
    name = name
  }
end

nvim_web_devicons.setup({
  override = {
    ['Brewfile'] = {
      icon = '',
      color = '#f0b357',
      name = 'Brewfile'
    },
    ['.zshrc'] = conf_icon('Zshrc'),
    ['skhdrc'] = conf_icon('Skhdrc')
  }
})
