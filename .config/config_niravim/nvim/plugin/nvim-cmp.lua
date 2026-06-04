local cmp = require'cmp'

cmp.setup({
    mapping = cmp.mapping.preset.insert({

      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    })
})
