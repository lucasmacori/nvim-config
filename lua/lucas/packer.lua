vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  use {
	'nvim-telescope/telescope.nvim', tag = '0.1.5',
	requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	'folke/tokyonight.nvim',
	as = 'tokyonight',
	config = function()
		vim.cmd('colorscheme tokyonight')
	end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('ThePrimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
end)
