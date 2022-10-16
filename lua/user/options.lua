-- Language
vim.opt.langmenu = en_US
vim.cmd "let $LANG = 'en_US'"

vim.opt.mouse="a"
vim.opt.tabstop=4 softtabstop=4 
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.nu = true
vim.opt.fileencoding = "utf-8"
vim.opt.errorbells = false
vim.cmd "set guicursor=n-v-c:block-Cursor"
vim.opt.hlsearch = false
vim.opt.hidden = true
vim.opt.wrap = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.autochdir = true

-- To keep history
vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.opt.backup = false
vim.cmd "set undodir=~/.vim/undodir"
vim.opt.undofile = true

vim.opt.incsearch = true
vim.opt.scrolloff=8
vim.opt.signcolumn="yes"
vim.opt.colorcolumn="80"
vim.opt.cursorline = true
vim.opt.clipboard="unnamedplus"

-- Neovide specific
vim.g.neovide_cursor_vfx_mode = "pixiedust"
vim.g.neovide_cursor_vfx_particle_density = 40.0
vim.g.neovide_cursor_vfx_particle_curl=5.0
vim.g.neovide_fullscreen = true
vim.g.neovide_remember_window_size = true

vim.mapleader = " "
--nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
