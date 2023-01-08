local status_ok, configs = pcall(require, 'nvim-treesitter.configs')
if not status_ok then
  return
end

configs.setup {
  ensure_installed = {
    'bash',
    'c',
    'cpp',
    'css',
    'elixir',
    'go',
    'html',
    'java',
    'javascript',
    'json',
    'lua',
    'php',
    'python',
    'ruby',
    'sql',
    'yaml',
  },
  highlight = {
    enable = true,
  }
}
