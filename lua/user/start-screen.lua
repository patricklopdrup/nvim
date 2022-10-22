local startify_status_ok, startify = pcall(require, "startify")
if not startify_status_ok then
    vim.notify("Startify not installed.")
end

local g = vim.g

g.startify_custom_header = {
    '',
    '',
    '                                       ██            ',
    '                                      ░░             ',
    '    ███████   █████   ██████  ██    ██ ██ ██████████ ',
    '   ░░██░░░██ ██░░░██ ██░░░░██░██   ░██░██░░██░░██░░██',
    '    ░██  ░██░███████░██   ░██░░██ ░██ ░██ ░██ ░██ ░██',
    '    ░██  ░██░██░░░░ ░██   ░██ ░░████  ░██ ░██ ░██ ░██',
    '    ███  ░██░░██████░░██████   ░░██   ░██ ███ ░██ ░██',
    '   ░░░   ░░  ░░░░░░  ░░░░░░     ░░    ░░ ░░░  ░░  ░░ ',
    '',
    '',
}

g.startify_session_dir = "~/AppData/Local/nvim/session"

g.startify_lists = {
     { type= 'files',     header= {'   Files'}            },
     { type= 'dir',       header= {'   Current Directory '..vim.fn.getcwd()} },
     { type= 'sessions',  header= {'   Sessions'}       },
     { type= 'bookmarks', header= {'   Bookmarks'}      },
}

g.startify_bookmarks = {
    { p = '~/AppData/Local/nvim/lua/user/plugins.lua' },
    { i = '~/AppData/Local/nvim/init.lua' },
    { m = '~/AppData/Local/nvim/lua/user/keymaps.lua' },
    { d = 'C:/dev' },
}
