-- alpha-config.lua

return {
  { -- Alpha (Dashboard)
    'goolord/alpha-nvim',
    event = 'VimEnter',
    dependencies = {
      'nvim-lua/plenary.nvim', -- Dependência geralmente necessária
    },
    config = function()
      local alpha = require 'alpha'
      local dashboard = require 'alpha.themes.dashboard'

      -- Definindo o cabeçalho (header)
      dashboard.section.header.val = {
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣿⣿⠀⠀⠀⢠⣾⣧⣤⡖⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⠋⠀⠉⠀⢄⣸⣿⣿⣿⣿⣿⣥⡤⢶⣿⣦⣀⡀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⡆⠀⠀⠀⣙⣛⣿⣿⣿⣿⡏⠀⠀⣀⣿⣿⣿⡟]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⠷⣦⣤⣤⣬⣽⣿⣿⣿⣿⣿⣿⣿⣟⠛⠿⠋⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⠋⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⡆⠀⠀]],
[[⠀⠀⠀⠀⣠⣶⣶⣶⣿⣦⡀⠘⣿⣿⣿⣿⣿⣿⣿⣿⠿⠋⠈⢹⡏⠁⠀⠀]],
[[⠀⠀⠀⢀⣿⡏⠉⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡆⠀⢀⣿⡇⠀⠀⠀]],
[[⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣟⡘⣿⣿⣃⠀⠀⠀]],
[[⣴⣷⣀⣸⣿⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⠹⣿⣯⣤⣾⠏⠉⠉⠉⠙⠢⠀]],
[[⠈⠙⢿⣿⡟⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣄⠛⠉⢩⣷⣴⡆⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠋⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣀⡠⠋⠈⢿⣇⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠿⠿⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀]],
      }

      -- Definindo os botões
      dashboard.section.buttons.val = {
        dashboard.button('f', '  Find file', ':Telescope find_files <CR>'),
        dashboard.button('e', '  New File', ':ene <BAR> startinsert <CR>'),
        dashboard.button('t', '󰊄  Find text', ':Telescope live_grep <CR>'),
        dashboard.button('s', '🎨 Select colorscheme', ':Telescope colorscheme <CR>'),
        dashboard.button('c', '  Configuration', ':e ~/.config/nvim/init.lua<CR>'),
        dashboard.button('q', '  Quit Neovim', ':qa<CR>'),
      }

      -- Definindo o rodapé (footer)
      local function footer()
        return "Don't Stop Until You are Proud..."
      end

      dashboard.section.footer.val = footer()

      -- Configurando os highlights
      dashboard.section.footer.opts.hl = 'Type'
      dashboard.section.header.opts.hl = 'Include'
      dashboard.section.buttons.opts.hl = 'Keyword'

      -- Configurando o alpha
      alpha.setup(dashboard.opts)
    end,
  },
}
