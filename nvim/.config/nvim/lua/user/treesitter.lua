local ok, nvim_treesitter_configs = pcall(require, 'nvim-treesitter.configs')
if not ok then
  return
end

nvim_treesitter_configs.setup({
  ensure_installed = {
    'bash',
    'c',
    'cpp',
    'css',
    'elixir',
    'go',
    'help',
    'html',
    'java',
    'javascript',
    'json',
    'lua',
    'php',
    'python',
    'ruby',
    'sql',
    'vim',
    'yaml',
  },
  highlight = {
    enable = true,
  },
})
