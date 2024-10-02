require('lazy').setup({

  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  require 'pedro/plugins/presence',

  require 'pedro/plugins/leetcode',
  --
  require 'pedro/plugins/nabla',

  require 'pedro/plugins/flutter',

  require 'pedro/plugins/statusline',

  require 'pedro/plugins/trouble',

  require 'pedro/plugins/bufferline',


  require 'pedro/plugins/alpha',


  require 'pedro/plugins/which-key',

  require 'pedro/plugins/telescope',


  require 'pedro/plugins/lspzero',


  require 'pedro/plugins/todo-comments',


  require 'pedro/plugins/treesitter',

  require 'pedro/plugins/colors',

  require 'pedro/plugins/ibl',

  require 'pedro/plugins/neorg',

  require 'pedro.plugins.autopairs',
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- vim: ts=2 sts=2 sw=2 et
