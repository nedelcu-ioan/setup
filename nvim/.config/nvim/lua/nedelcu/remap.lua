local builtin = require('telescope.builtin')

-- add options to function decorator
function with_opts(fn, opts)
    return function()
        fn(opts)
    end
end

-- SPACE as leader key
vim.g.mapleader = " "

-- Telescope find files 
vim.keymap.set('n', '<leader>ff', with_opts(builtin.find_files, {hidden = true}), {})

-- Telescope switch branches
vim.keymap.set('n', '<leader>fb', builtin.git_branches, {})

-- Telescope live grep
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

-- Go to default vim dir search pane 
vim.keymap.set('n', '<leader>ex', vim.cmd.Lexplore)

-- Remap to switch between splits
vim.keymap.set('n', "<leader>w", [[<C-w>]])

-- Open a terminal in vertical split
vim.keymap.set('n', '<leader>tt', ':vnew term://bash<CR>')

-- Open terminal in the current buffer
vim.keymap.set('n', '<leader>te', ':edit term://bash<CR>') 

-- Alias for terminal escape
vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], termopts)

-- Keep cursor in the middle of the screen while jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
