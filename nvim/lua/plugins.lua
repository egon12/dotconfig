
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- File Manager
  use 'lambdalisue/fern.vim'
  use 'lambdalisue/fern-renderer-nerdfont.vim'
  use 'lambdalisue/nerdfont.vim'
  use 'junegunn/fzf'
  use 'jremmen/vim-ripgrep'


  -- Sudo write
  use 'https://github.com/lambdalisue/suda.vim'

  -- For beter highlight
  use 'jaxbot/semantic-highlight.vim'

  -- For git project
  use 'tpope/vim-fugitive'

  -- Color
  use {'dracula/vim', as = 'dracula'}

  -- For md
  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}
  use 'https://gitlab.com/gi1242/vim-emoji-ab'

  -- For golang development
  --   use 'https://github.com/Shougo/deoplete.nvim'
  --   use 'https://github.com/SirVer/ultisnips'
  use 'tomtom/quickfixsigns_vim'
  use 'egon12/vim-go'
  use 'buoto/gotests-vim'
  use 'https://github.com/AndrewRadev/splitjoin.vim'

  -- For react-native development
  use 'pangloss/vim-javascript'
  --   use 'dense-analysis/ale'
  --   use 'prettier/vim-prettier', { 'do': 'npm install' }
  --   use 'ruanyl/vim-fixmyjs'
  use 'maxmellon/vim-jsx-pretty'

  --Dart/Flutter
  use 'dart-lang/dart-vim-plugin'
  use 'thosakwe/vim-flutter'
  use 'natebosch/vim-lsc'
  use 'natebosch/vim-lsc-dart'

  -- Some html and http
  use 'https://github.com/nicwest/vim-http'
  use 'https://github.com/sukima/xmledit'

  --image in kitty
  use 'edluffy/hologram.nvim'

  use 'dag/vim-fish'

  ---- Simple plugins can be specified as strings
  --use '9mm/vim-closer'

  ---- Lazy loading:
  ---- Load on specific commands
  --use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

  ---- Load on an autocommand event
  --use {'andymass/vim-matchup', event = 'VimEnter'}

  ---- Load on a combination of conditions: specific filetypes or commands
  ---- Also run code after load (see the "config" key)
  --use {
  --  'w0rp/ale',
  --  ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
  --  cmd = 'ALEEnable',
  --  config = 'vim.cmd[[ALEEnable]]'
  --}

  ---- Plugins can have dependencies on other plugins
  --use {
  --  'haorenW1025/completion-nvim',
  --  opt = true,
  --  requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
  --}

  ---- Plugins can also depend on rocks from luarocks.org:
  --use {
  --  'my/supercoolplugin',
  --  rocks = {'lpeg', {'lua-cjson', version = '2.1.0'}}
  --}

  ---- You can specify rocks in isolation
  --use_rocks 'penlight'
  --use_rocks {'lua-resty-http', 'lpeg'}

  ---- Local plugins can be included
  --use '~/projects/personal/hover.nvim'

  ---- Post-install/update hook with neovim command
  --use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  ---- Post-install/update hook with call of vimscript function with argument
  --use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }

  ---- Use specific branch, dependency and run lua file after load
  --use {
  --  'glepnir/galaxyline.nvim', branch = 'main', config = function() require'statusline' end,
  --  requires = {'kyazdani42/nvim-web-devicons'}
  --}

  ---- Use dependency and run lua function after load
  --use {
  --  'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
  --  config = function() require('gitsigns').setup() end
  --}

  ---- You can specify multiple plugins in a single call
  --use {'tjdevries/colorbuddy.vim', {'nvim-treesitter/nvim-treesitter', opt = true}}

end)
