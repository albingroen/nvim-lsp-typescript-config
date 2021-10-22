require('basics')
require('colors')
require('lsp')
require('telescope-config')
require('nvim-autopairs').setup{}
require('formatter-config')

vim.cmd([[nnoremap <silent> <leader>f :Format<CR>]])

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/vim-vsnip'
  use "projekt0n/github-nvim-theme"
  use 'windwp/nvim-autopairs'
  use 'mhartington/formatter.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    "blackCauldron7/surround.nvim",
    config = function()
      require"surround".setup {mappings_style = "surround"}
    end
  }
end)
