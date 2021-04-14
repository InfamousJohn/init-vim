local execute = vim.api.nvim_command
local fn = vim.fn

-- If Packer is not installed, download and install it
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

return require('packer').startup(function()
    -- Packer
    use 'wbthomason/packer.nvim'

    -- Colors
    use {"npxbr/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
    use 'norcalli/nvim-colorizer.lua'
    use 'sainnhe/sonokai'
    use 'joshdick/onedark.vim'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-compe'
    use 'kabouzeid/nvim-lspinstall'
    use 'onsails/lspkind-nvim'
    -- use 'ray-x/lsp_signature.nvim'

    -- Linting
    -- Waiting until https://github.com/mfussenegger/nvim-lint is more developed
    use 'dense-analysis/ale'
    use 'nathunsmitty/nvim-ale-diagnostic'

    -- Syntax
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- Icons
    use 'kyazdani42/nvim-web-devicons'

    -- Fuzzy finding
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }
    use 'nvim-telescope/telescope-fzy-native.nvim'

    -- Tabs
    use 'romgrk/barbar.nvim'

    --Statusline
    use {'hoob3rt/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}}

    -- File tree
    use 'kyazdani42/nvim-tree.lua'

    -- Indent lines
    use {'lukas-reineke/indent-blankline.nvim', branch = 'lua'}

    -- Commenting
    use 'b3nj5m1n/kommentary'

    -- Autopairs
    use 'windwp/nvim-autopairs'

    -- Surround
    use 'tpope/vim-surround'

    -- Increment
    use 'monaqa/dial.nvim'

    -- Substitution
    use 'svermeulen/vim-subversive'

    -- Tmux navigation
    use 'numToStr/Navigator.nvim'

    -- Git
    -- use 'TimUntersberger/neogit'
    use 'lewis6991/gitsigns.nvim'  -- Currently fails in not-git repos
    use 'tpope/vim-fugitive'

    -- Change cwd to project
    use 'airblade/vim-rooter'

    -- Startify
    use 'mhinz/vim-startify'

    -- Search and replace
    use 'eugen0329/vim-esearch'

    -- Documentation generation
    use {'kkoomen/vim-doge', run=':call doge#install()'}

    -- Repeat
    use 'tpope/vim-repeat'

    -- Targets
    use 'wellle/targets.vim'

    -- Debugging
    use 'mfussenegger/nvim-dap'
    use 'mfussenegger/nvim-dap-python'
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

end)
