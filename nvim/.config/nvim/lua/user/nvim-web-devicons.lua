local status_ok, nvim_web_devicons = pcall(require, 'nvim-web-devicons')
if not status_ok then
  return
end

nvim_web_devicons.setup({
  override = {
    Brewfile = {
      icon = '',
      color = '#f0b357',
      name = 'Brewfile'
    }
  }
})
