local builtin = require('telescope.builtin')

-- add options to function decorator
function with_opts(fn, opts)
    return function()
        fn(opts)
    end
end

vim.g.mapleader = " "
vim.keymap.set('n', '<leader>ff', with_opts(builtin.find_files, {hidden = true}), {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>ex', vim.cmd.Lexplore)


vim.keymap.set('n', "<leader>w", [[<C-w>]])
-- Open a terminal in vertical split
vim.keymap.set('n', '<leader>tt', ':vnew term://bash<CR>')
vim.keymap.set('n', '<leader>te', ':edit term://bash<CR>') 
vim.keymap.set("t", "<leader>w", [[<C-\><C-n><C-w>]], termopts)
