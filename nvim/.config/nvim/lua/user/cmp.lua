local cmp_status_ok, cmp = pcall(require, 'cmp')
if not cmp_status_ok then
  return
end

cmp.setup({
  mapping = {
    ['<c-j>'] = cmp.mapping.select_next_item(),
    ['<c-k>'] = cmp.mapping.select_prev_item(),
    ['<cr>'] = cmp.mapping.confirm({ select = true })
  },
  sources = {
    { name = 'buffer' }
  }
})
