local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- TO DO - figure out how to get it to work with this file
-- In the meantime, use :PackerSync

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	use ("wbthomason/packer.nvim") -- Have packer manage itself

    use ('preservim/nerdtree')
    use ('vim-airline/vim-airline')
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }

    -- Comment
    use {
        'numToStr/Comment.nvim',
        config = function()
        	require('Comment').setup()
   	 end
    }

    -- cheat.sh
    use {'dbeniamine/cheat.sh-vim'}

    -- Git
    use {'tpope/vim-fugitive'}

    -- Git blame
    use {'APZelos/blamer.nvim'}

    -- Debugging
    use {'mfussenegger/nvim-dap'}
    use {'rcarriga/nvim-dap-ui', requires = {'mfussenegger/nvim-dap'} }
    use {'mfussenegger/nvim-dap-python' }

    -- Whitespace
    use {'ntpeters/vim-better-whitespace'}

    -- Colorscheme
    use {'bluz71/vim-nightfly-colors'}

	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)

