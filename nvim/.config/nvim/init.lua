--]]

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font =true 
vim.o.termguicolors = true

-- Configuração para fundo transparente
vim.cmd 'hi Normal guibg=NONE ctermbg=NONE'
vim.cmd 'hi NonText guibg=NONE ctermbg=NONE'
vim.cmd 'hi LineNr guibg=NONE ctermbg=NONE'
vim.cmd 'hi CursorLine guibg=NONE ctermbg=NONE'
vim.cmd 'hi SignColumn guibg=NONE ctermbg=NONE'

-- [[ Setting options ]]
require 'options'

-- [[ Basic Keymaps ]]
require 'keymaps'

-- [[ Install `lazy.nvim` plugin manager ]]
require 'lazy-bootstrap'

-- [[ Configure and install plugins ]]
require 'lazy-plugins'


-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
