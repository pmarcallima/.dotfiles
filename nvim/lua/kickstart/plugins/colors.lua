function ColorMyPencils(color)
  color = color or 'catppuccin'
  vim.cmd.colorscheme(color)
  vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'nonText', { bg = 'none' })
end
return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      require('rose-pine').setup {
        disable_background = true,
      }
      vim.cmd 'colorscheme rose-pine'

      ColorMyPencils()
    end,
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    config = function()
      require('catppuccin').setup {
        transparent_background = true,
      }
      vim.cmd 'colorscheme catppuccin'

      ColorMyPencils()
    end,
  },
  {
    'folke/tokyonight.nvim',
    name = 'tokyonight',
    config = function()
      require('tokyonight').setup {
        style = 'night',
        transparent = true,
      }
    end,
  },
}
