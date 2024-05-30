return {
  'goolord/alpha-nvim', -- Dashboard
  -- dependencies = {"nvim-tree/nvim-web-devicons"}, -- i'm not sure if i want this
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'
    local logo = [[                                                                       
        ██████   █████                   █████   █████  ███                  
       ░░██████ ░░███                   ░░███   ░░███  ░░░                   
        ░███░███ ░███   ██████   ██████  ░███    ░███  ████  █████████████   
        ░███░░███░███  ███░░███ ███░░███ ░███    ░███ ░░███ ░░███░░███░░███  
        ░███ ░░██████ ░███████ ░███ ░███ ░░███   ███   ░███  ░███ ░███ ░███  
        ░███  ░░█████ ░███░░░  ░███ ░███  ░░░█████░    ░███  ░███ ░███ ░███  
        █████  ░░█████░░██████ ░░██████     ░░███      █████ █████░███ █████ 
       ░░░░░    ░░░░░  ░░░░░░   ░░░░░░       ░░░      ░░░░░ ░░░░░ ░░░ ░░░░░  
                                                                             
                           λ it be like that sometimes λ                     ]]

    local function getGreeting(name)
      local tableTime = os.date '*t'
      local datetime = os.date ' %Y-%m-%d   %H:%M:%S'
      local hour = tableTime.hour
      local greetingsTable = {
        [1] = '  Bons sonos',
        [2] = '  Bom dia',
        [3] = '  Boa tarde',
        [4] = '  Bom entardecer',
        [5] = '󰖔  Boa noite',
      }
      local greetingIndex = 0
      if hour == 23 or hour < 7 then
        greetingIndex = 1
      elseif hour < 12 then
        greetingIndex = 2
      elseif hour >= 12 and hour < 18 then
        greetingIndex = 3
      elseif hour >= 18 and hour < 21 then
        greetingIndex = 4
      elseif hour >= 21 then
        greetingIndex = 5
      end
      return '\t' .. datetime .. '\t' .. greetingsTable[greetingIndex] .. ', ' .. name
    end

    local userName = 'Pedro'
    local greeting = getGreeting(userName)
    dashboard.section.header.val = vim.split(logo .. '\n' .. greeting, '\n')

    dashboard.section.buttons.val = {
      dashboard.button('f', '  Find file', ':Telescope find_files<CR>'),
      dashboard.button('w', '󰷾  Find text', ':Telescope live_grep <CR>'),
      dashboard.button('r', '  Recents', ':Telescope oldfiles<CR>'),
      dashboard.button('t', '  Themes', ':Telescope colorscheme<CR>'),
      dashboard.button('e', '  Explore', ':BrowseFiles<CR>'),
      dashboard.button('p', '󰏗  Lazy', ':Lazy<CR>'),
      dashboard.button('m', '  Mason', ':Mason<CR>'),
      dashboard.button('q', '  Quit', ':qa<CR>'),
    }
    local handle, err = io.popen 'fortune -s'
    if err or handle == nil then
      dashboard.section.footer.val = 'May the truth be found.'
      alpha.setup(dashboard.opts)
      return
    end
    local fortune = handle:read '*a'
    handle:close()
    dashboard.section.footer.val = fortune
    alpha.setup(dashboard.opts)
  end,
}
