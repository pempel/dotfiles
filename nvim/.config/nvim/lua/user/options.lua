vim.opt.termguicolors = true     -- set term gui colors (most terminals support this)
vim.opt.number = true            -- show line numbers
vim.opt.signcolumn = 'yes'       -- always show the sign column
vim.opt.cursorline = true        -- highlight the current line
vim.opt.wrap = false             -- lines will not wrap and only part of long lines will be displayed
vim.opt.expandtab = true         -- convert tabs to spaces
vim.opt.tabstop = 2              -- insert 2 spaces for a tab
vim.opt.shiftwidth = 2           -- insert 2 spaces for each indentation
vim.opt.hlsearch = false         -- do not highlight search matches
vim.opt.ignorecase = true        -- ignore case in search patterns
vim.opt.smartcase = true         -- if a search pattern contains upper case characters, search is case sensitive
vim.opt.scrolloff = 8            -- keep 8 screen lines above and below the cursor
vim.opt.splitbelow = true        -- make the new window appear below the current window
vim.opt.splitright = true        -- make the new window appear on the right
vim.opt.swapfile = false         -- disable swapfiles

vim.cmd([[set shm+=I]])          -- disable the start screen
