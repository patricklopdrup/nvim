local opts = { noremap = true, silent = true }

-- shorten function name
local keymap = vim.api.nvim_set_keymap

-- leaderkey is mapped in lua/plh/plugins

-- Modes
--  normal_mode = "n"
--  insert_mode = "i"
--  visual_mode = "v"
--  visual_block_mode = "x"
--  term_mode = "t"
--  command_mode = "c"

-- Normal --
-- Better windows navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Telescope -- 
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts) -- (ripgrep has to be installed) scoop install ripgrep
keymap("n", "gf", "<cmd>Telescope lsp_document_symbols symbols=function<cr>", opts) -- (ripgrep has to be installed) scoop install ripgrep

-- Gitsigns
keymap("n", "<leader>gb", "<cmd>Gitsigns blame_line<cr>", opts)
keymap("n", "<leader>gr", "<cmd>Gitsigns reset_hunk<cr>", opts)
keymap("n", "<leader>gs", "<cmd>Gitsigns preview_hunk<cr>", opts)

-- Nvim tree --
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Toggle term --
keymap("n", "<f5>", "<cmd>lua RUN_FILE()<cr>", opts)

-- Debug --
vim.cmd([[
nmap <F9> <cmd>call vimspector#Launch()<cr>
nmap <F10> <cmd>call vimspector#StepOver()<cr>
nmap <F8> <cmd>call vimspector#Reset()<cr>
nmap <F11> <cmd>call vimspector#StepInto()<cr>
nmap <F12> <cmd>call vimspector#StepOut()<cr>
]])

keymap('n', "Db", ":call vimspector#ToggleBreakpoint()<cr>", opts)
keymap('n', "Dw", ":call vimspector#AddWatch()<cr>", opts)
keymap('n', "De", ":call vimspector#Evaluate()<cr>", opts)

keymap("n", "Dt", ":lua debug_rust()<cr>", opts) -- test for now!
function debug_rust()
    -- local root_dir = vim.fs.dirname(".git")
    local root_dir = vim.fn.fnamemodify(vim.fn.getcwd(), ":h")
    local root_dir_path = vim.fn.fnamemodify(
                            vim.fn.finddir(".git", root_dir), ":p")

    local vimspector_config_file = root_dir .. "/.vimspector.json"

    if not vim.fn.filereadable(vimspector_config_file) == 1 then
        -- the file does NOT exist
        print("not found")
        -- create the file
    end

    -- run the vimspector#Launch
end

-- Create a .vimspector config file
local current_file_name = vim.fn.fnamemodify(vim.fn.bufname("%"), ":t")
local current_project_name = "" -- get name of project
local data = {
    configurations = {
        launch = {
            adapter = "CodeLLDB",
            filetypes = { "rust" },
            configuration = {
                request = "launch",
                program = "${workspaceRoot}/targer/debug/" .. current_project_name
            }
        }
    }
}

local function create_vimspector_file()
    local json_data = require("json").encode(data)
    print(json_data)
end
