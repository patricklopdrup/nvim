vim.opt.mouse="a"
vim.opt.tabstop=4
vim.opt.softtabstop=4
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

-- For terminal to be PowerShell
vim.o.shell = "pwsh"
vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
vim.opt.shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait"
vim.opt.shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
vim.opt.shellquote = ""
vim.opt.shellxquote = ""

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
