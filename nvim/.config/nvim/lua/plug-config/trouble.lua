local trouble = require('trouble')

trouble.setup({
    -- keys = {
    --     {
    --       "<leader>xx",
    --       "<cmd>Trouble diagnostics toggle<cr>",
    --       desc = "Diagnostics (Trouble)",
    --     },
    -- }
    mapping = {
        ['<leader>xx'] = trouble.diagnostics.toggle(),
        -- ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        -- ['<C-f>'] = cmp.mapping.scroll_docs(4),
        -- ['<C-Space>'] = cmp.mapping.complete(),
        -- ['<C-e>'] = cmp.mapping.abort(),
        -- ['<CR>'] = cmp.mapping.confirm({ 
        --     select = true,
        --     behavior = cmp.ConfirmBehavior.Insert,
        -- }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    },
})
