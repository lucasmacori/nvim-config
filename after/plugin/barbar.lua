local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap("n", "<leader>p", "<Cmd>BufferPin<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader><", "<Cmd>BufferPrevious<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>>", "<Cmd>BufferNext<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>q", "<Cmd>BufferClose<CR>", opts)

vim.g.barbar_auto_setup = false -- disable auto-setup

require'barbar'.setup {
    animation = true,
    auto_hide = false,
    tabpages = true,
    clickable = true,
    highlight_visible = true,
    sidebar_filetypes = {
        -- Use the default values: {event = 'BufWinLeave', text = nil}
        NvimTree = true,
        -- Or, specify the text used for the offset:
        undotree = {text = 'undotree'},
        -- Or, specify the event which the sidebar executes when leaving:
        ['neo-tree'] = {event = 'BufWipeout'},
        -- Or, specify both
        Outline = {event = 'BufWinLeave', text = 'symbols-outline'},
    },
}
